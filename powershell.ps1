$token = [System.Text.Encoding]::UTF8.GetBytes($env:CODESCAN_TOKEN + ":")
          $base64 = [System.Convert]::ToBase64String($token)
          $basicAuth = [string]::Format("Basic {0}", $base64)
          $headers = @{ Authorization = $basicAuth }
       
          Write-Host "Pull Request ID:$($env:SYSTEM_PULLREQUEST_PULLREQUESTID)"
       
          $Target = "$env:SYSTEM_PULLREQUEST_PULLREQUESTID"
          $URL = "https://app.codescan.io/api/qualitygates/project_status?projectKey=azure3&pullRequest={0}"
       
          if( !$Target)
          {
          $Target = "$env:BUILD_SOURCEBRANCH"
          $Target = $Target.Replace('refs/heads/','')
          $URL = "https://app.codescan.io/api/qualitygates/project_status?projectKey=azure3&branch={0}"
          }
       
          $URL = [string]::Format($URL, $Target)
       
          $result = Invoke-RestMethod -Method Get -Uri $URL  -Headers $headers
          $result | ConvertTo-Json | Write-Host
        
          if ($result.projectStatus.status -eq "OK") {
          Write-Host "Quality Gate Succeeded"
          }else{
          throw "Quality Gate failed"
          }
