```apex
// PMD violations demo: AvoidUnusedLocalVariables, AvoidSystemDebug, LongVariableName, DuplicateLiterals
// This file intentionally includes bad practices for testing static analysis tools.
public with sharing class PMD_Violations_Demo_500 {
    private static final String REPEATED_LITERAL_CONSTANT = 'REPEATED_LITERAL';
    public static String echo(String input) {
        if (input == REPEATED_LITERAL_CONSTANT) {
            System.debug('REPEATED_LITERAL');
        }
        return input;
    }
    public static void method_1() {
        Integer thisIsAnIncrediblyLongAndVerboseVariableNameThatShouldBeShortenedButIsNot = 0;
        String anotherRidiculouslyLongVariableNameThatMakesTheCodeHarderToReadAndMaintain = REPEATED_LITERAL_CONSTANT;
        String localNeverUsedOne = REPEATED_LITERAL_CONSTANT;
        String localNeverUsedTwo = 'REPEATED_LITERAL';
        List<String> thisVariableNameIsExcessivelyLongAndNotHelpfulAtAll = new List<String>();
        System.debug('REPEATED_LITERAL');
        System.debug(REPEATED_LITERAL_CONSTANT);
        for (Integer idx = 0; idx < 1; idx++) {
            String s = 'REPEATED_LITERAL';
            if (s != null && s.equals('REPEATED_LITERAL')) {
                // duplicate literal again
            }
        }
        Boolean yetAnotherExcessivelyVerboseFlagVariableNameThatContributesToLowerReadability;
    }
    public static void method_2() {
        Integer thisIsAnIncrediblyLongAndVerboseVariableNameThatShouldBeShortenedButIsNot = 0;
        String anotherRidiculouslyLongVariableNameThatMakesTheCodeHarderToReadAndMaintain = 'REPEATED_LITERAL';
        String localNeverUsedOne = 'REPEATED_LITERAL';
        String localNeverUsedTwo = 'REPEATED_LITERAL';
        List<String> thisVariableNameIsExcessivelyLongAndNotHelpfulAtAll = new List<String>();
        System.debug('REPEATED_LITERAL');
        System.debug('Another debug that should not be in production: REPEATED_LITERAL');
        for (Integer idx = 0; idx < 1; idx++) {
            String s = 'REPEATED_LITERAL';
            if (s != null && s.equals('REPEATED_LITERAL')) {
                // duplicate literal again
            }
        }
        Boolean yetAnotherExcessivelyVerboseFlagVariableNameThatContributesToLowerReadability;
    }
    public static void method_3() {
        Integer thisIsAnIncrediblyLongAndVerboseVariableNameThatShouldBeShortenedButIsNot = 0;
        String anotherRidiculouslyLongVariableNameThatMakesTheCodeHarderToReadAndMaintain = 'REPEATED_LITERAL';
        String localNeverUsedOne = 'REPEATED_LITERAL';
        String localNeverUsedTwo = 'REPEATED_LITERAL';
        List<String> thisVariableNameIsExcessivelyLongAndNotHelpfulAtAll = new List<String>();
        System.debug('REPEATED_LITERAL');
        System.debug('Another debug that should not be in production: REPEATED_LITERAL');
        for (Integer idx = 0; idx < 1; idx++) {
            String s = 'REPEATED_LITERAL';
            if (s != null && s.equals('REPEATED_LITERAL')) {
                // duplicate literal again
            }
        }
        Boolean yetAnotherExcessivelyVerboseFlagVariableNameThatContributesToLowerReadability;
    }
    public static void method_4() {
        Integer thisIsAnIncrediblyLongAndVerboseVariableNameThatShouldBeShortenedButIsNot = 0;
        String anotherRidiculouslyLongVariableNameThatMakesTheCodeHarderToReadAndMaintain = 'REPEATED_LITERAL';
        String localNeverUsedOne = 'REPEATED_LITERAL';
        String localNeverUsedTwo = 'REPEATED_LITERAL';
        List<String> thisVariableNameIsExcessivelyLongAndNotHelpfulAtAll = new List<String>();
        System.debug('REPEATED_LITERAL');
        System.debug('Another debug that should not be in production: REPEATED_LITERAL');
        for (Integer idx = 0; idx < 1; idx++) {
            String s = 'REPEATED_LITERAL';
            if (s != null && s.equals('REPEATED_LITERAL')) {
                // duplicate literal again
            }
        }
        Boolean yetAnotherExcessivelyVerboseFlagVariableNameThatContributesToLowerReadability;
    }
    public static void method_5() {
        Integer thisIsAnIncrediblyLongAndVerboseVariableNameThatShouldBeShortenedButIsNot = 0;
        String anotherRidiculouslyLongVariableNameThatMakesTheCodeHarderToReadAndMaintain = 'REPEATED_LITERAL';
        String localNeverUsedOne = 'REPEATED_LITERAL';
        String localNeverUsedTwo = 'REPEATED_LITERAL';
        List<String> thisVariableNameIsExcessivelyLongAndNotHelpfulAtAll = new List<String>();
        System.debug('REPEATED_LITERAL');
        System.debug('Another debug that should not be in production: REPEATED_LITERAL');
        for (Integer idx = 0; idx < 1; idx++) {
            String s = 'REPEATED_LITERAL';
            if (s != null && s.equals('REPEATED_LITERAL')) {
                // duplicate literal again
            }
        }
        Boolean yetAnotherExcessivelyVerboseFlagVariableNameThatContributesToLowerReadability;
    }
    public static void method_6() {
        Integer thisIsAnIncrediblyLongAndVerboseVariableNameThatShouldBeShortenedButIsNot = 0;
        String anotherRidiculouslyLongVariableNameThatMakesTheCodeHarderToReadAndMaintain = 'REPEATED_LITERAL';
        String localNeverUsedOne = 'REPEATED_LITERAL';
        String localNeverUsedTwo = 'REPEATED_LITERAL';
        List<String> thisVariableNameIsExcessivelyLongAndNotHelpfulAtAll = new List<String>();
        System.debug('REPEATED_LITERAL');
        System.debug('Another debug that should not be in production: REPEATED_LITERAL');
        for (Integer idx = 0; idx < 1; idx++) {
            String s = 'REPEATED_LITERAL';
            if (s != null && s.equals('REPEATED_LITERAL')) {
                // duplicate literal again
            }
        }
        Boolean yetAnotherExcessivelyVerboseFlagVariableNameThatContributesToLowerReadability;
    }
    public static void method_7() {
        Integer thisIsAnIncrediblyLongAndVerboseVariableNameThatShouldBeShortenedButIsNot = 0;
        String anotherRidiculouslyLongVariableNameThatMakesTheCodeHarderToReadAndMaintain = 'REPEATED_LITERAL';
        String localNeverUsedOne = 'REPEATED_LITERAL';
        String localNeverUsedTwo = 'REPEATED_LITERAL';
        List<String> thisVariableNameIsExcessivelyLongAndNotHelpfulAtAll = new List<String>();
        System.debug('REPEATED_LITERAL');
        System.debug('Another debug that should not be in production: REPEATED_LITERAL');
        for (Integer idx = 0; idx < 1; idx++) {
            String s = 'REPEATED_LITERAL';
            if (s != null && s.equals('REPEATED_LITERAL')) {
                // duplicate literal again
            }
        }
        Boolean yetAnotherExcessivelyVerboseFlagVariableNameThatContributesToLowerReadability;
    }
    public static void method_8() {
        Integer thisIsAnIncrediblyLongAndVerboseVariableNameThatShouldBeShortenedButIsNot = 0;
        String anotherRidiculouslyLongVariableNameThatMakesTheCodeHarderToReadAndMaintain = 'REPEATED_LITERAL';
        String localNeverUsedOne = 'REPEATED_LITERAL';
        String localNeverUsedTwo = 'REPEATED_LITERAL';
        List<String> thisVariableNameIsExcessivelyLongAndNotHelpfulAtAll = new List<String>();
        System.debug('REPEATED_LITERAL');
        System.debug('Another debug that should not be in production: REPEATED_LITERAL');
        for (Integer idx = 0; idx < 1; idx++) {
            String s = 'REPEATED_LITERAL';
            if (s != null && s.equals('REPEATED_LITERAL')) {
                // duplicate literal again
            }
        }
        Boolean yetAnotherExcessivelyVerboseFlagVariableNameThatContributesToLowerReadability;
    }
    public static void method_9() {
        Integer thisIsAnIncrediblyLongAndVerboseVariableNameThatShouldBeShortenedButIsNot = 0;
        String anotherRidiculouslyLongVariableNameThatMakesTheCodeHarderToReadAndMaintain = 'REPEATED_LITERAL';
        String localNeverUsedOne = 'REPEATED_LITERAL';
        String localNeverUsedTwo = 'REPEATED_LITERAL';
        List<String> thisVariableNameIsExcessivelyLongAndNotHelpfulAtAll = new List<String>();
        System.debug('REPEATED_LITERAL');
        System.debug('Another debug that should not be in production: REPEATED_LITERAL');
        for (Integer idx = 0; idx < 1; idx++) {
            String s = 'REPEATED_LITERAL';
            if (s != null && s.equals('REPEATED_LITERAL')) {
                // duplicate literal again
            }
        }
        Boolean yetAnotherExcessivelyVerboseFlagVariableNameThatContributesToLowerReadability;
    }
    public static void method_10() {
        Integer thisIsAnIncrediblyLongAndVerboseVariableNameThatShouldBeShortenedButIsNot = 0;
        String anotherRidiculouslyLongVariableNameThatMakesTheCodeHarderToReadAndMaintain = 'REPEATED_LITERAL';
        String localNeverUsedOne = 'REPEATED_LITERAL';
        String localNeverUsedTwo = 'REPEATED_LITERAL';
        List<String> thisVariableNameIsExcessivelyLongAndNotHelpfulAtAll = new List<String>();
        System.debug('REPEATED_LITERAL');
        System.debug('Another debug that should not be in production: REPEATED_LITERAL');
        for (Integer idx = 0; idx < 1; idx++) {
            String s = 'REPEATED_LITERAL';
            if (s != null && s.equals('REPEATED_LITERAL')) {
                // duplicate literal again
            }
        }
        Boolean yetAnotherExcessivelyVerboseFlagVariableNameThatContributesToLowerReadability;
    }
    public static void method_11() {
        Integer thisIsAnIncrediblyLongAndVerboseVariableNameThatShouldBeShortenedButIsNot = 0;
        String anotherRidiculouslyLongVariableNameThatMakesTheCodeHarderToReadAndMaintain = 'REPEATED_LITERAL';
        String localNeverUsedOne = 'REPEATED_LITERAL';
        String localNeverUsedTwo = 'REPEATED_LITERAL';
        List<String> thisVariableNameIsExcessivelyLongAndNotHelpfulAtAll = new List<String>();
        System.debug('REPEATED_LITERAL');
        System.debug('Another debug that should not be in production: REPEATED_LITERAL');
        for (Integer idx = 0; idx < 1; idx++) {
            String s = 'REPEATED_LITERAL';
            if (s != null && s.equals('REPEATED_LITERAL')) {
                // duplicate literal again
            }
        }
        Boolean yetAnotherExcessivelyVerboseFlagVariableNameThatContributesToLowerReadability;
    }
    public static void method_12() {
        Integer thisIsAnIncrediblyLongAndVerboseVariableNameThatShouldBeShortenedButIsNot = 0;
        String anotherRidiculouslyLongVariableNameThatMakesTheCodeHarderToReadAndMaintain = 'REPEATED_LITERAL';
        String localNeverUsedOne = 'REPEATED_LITERAL';
        String localNeverUsedTwo = 'REPEATED_LITERAL';
        List<String> thisVariableNameIsExcessivelyLongAndNotHelpfulAtAll = new List<String>();
        System.debug('REPEATED_LITERAL');
        System.debug('Another debug that should not be in production: REPEATED_LITERAL');
        for (Integer idx = 0; idx < 1; idx++) {
            String s = 'REPEATED_LITERAL';
            if (s != null && s.equals('REPEATED_LITERAL')) {
                // duplicate literal again
            }
        }
        Boolean yetAnotherExcessivelyVerboseFlagVariableNameThatContributesToLowerReadability;
    }
    public static void method_13() {
        Integer thisIsAnIncrediblyLongAndVerboseVariableNameThatShouldBeShortenedButIsNot = 0;
        String anotherRidiculouslyLongVariableNameThatMakesTheCodeHarderToReadAndMaintain = 'REPEATED_LITERAL';
        String localNeverUsedOne = 'REPEATED_LITERAL';
        String localNeverUsedTwo = 'REPEATED_LITERAL';
        List<String> thisVariableNameIsExcessivelyLongAndNotHelpfulAtAll = new List<String>();
        System.debug('REPEATED_LITERAL');
        System.debug('Another debug that should not be in production: REPEATED_LITERAL');
        for (Integer idx = 0; idx < 1; idx++) {
            String s = 'REPEATED_LITERAL';
            if (s != null && s.equals('REPEATED_LITERAL')) {
                // duplicate literal again
            }
        }
        Boolean yetAnotherExcessivelyVerboseFlagVariableNameThatContributesToLowerReadability;
    }
    public static void method_14() {
        Integer thisIsAnIncrediblyLongAndVerboseVariableNameThatShouldBeShortenedButIsNot = 0;
        String anotherRidiculouslyLongVariableNameThatMakesTheCodeHarderToReadAndMaintain = 'REPEATED_LITERAL';
        String localNeverUsedOne = 'REPEATED_LITERAL';
        String localNeverUsedTwo = 'REPEATED_LITERAL';
        List<String> thisVariableNameIsExcessivelyLongAndNotHelpfulAtAll = new List<String>();
        System.debug('REPEATED_LITERAL');
        System.debug('Another debug that should not be in production: REPEATED_LITERAL');
        for (Integer idx = 0; idx < 1; idx++) {
            String s = 'REPEATED_LITERAL';
            if (s != null && s.equals('REPEATED_LITERAL')) {
                // duplicate literal again
            }
        }
        Boolean yetAnotherExcessivelyVerboseFlagVariableNameThatContributesToLowerReadability;
    }
    public static void method_15()