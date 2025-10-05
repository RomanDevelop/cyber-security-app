# Exercise Scenarios for Mobile App Security Training

## Scenario 1: Static APK Analysis

**Objective**: Analyze a simulated APK manifest and identify security red flags

### Materials Provided

- Simulated AndroidManifest.xml file
- App description and screenshots
- Developer information

### Exercise Steps

1. **Permission Analysis**

   - List all requested permissions
   - Categorize permissions by risk level
   - Identify permission mismatches
   - Flag suspicious permission combinations

2. **Manifest Review**

   - Check for hidden services or activities
   - Look for suspicious intent filters
   - Verify app package naming
   - Identify potential attack vectors

3. **Risk Assessment**
   - Rate overall risk level
   - Prioritize findings by severity
   - Provide remediation recommendations
   - Document evidence for each finding

### Expected Learning Outcomes

- Understand Android permission system
- Recognize permission mismatches
- Identify hidden functionality
- Practice risk assessment methodology

### Sample Manifest (Red Flags)

```xml
<!-- RED FLAGS TO IDENTIFY -->
<uses-permission android:name="android.permission.READ_SMS" />
<uses-permission android:name="android.permission.ACCESSIBILITY_SERVICE" />
<uses-permission android:name="android.permission.REQUEST_INSTALL_PACKAGES" />
<service android:name=".HiddenService" android:enabled="true" />
```

## Scenario 2: App Store Page Review

**Objective**: Analyze app store pages to identify suspicious patterns and red flags

### Materials Provided

- Simulated app store pages (3 different apps)
- App descriptions and screenshots
- Developer profiles and reviews
- Permission lists

### Exercise Steps

1. **Description Analysis**

   - Identify suspicious phrases
   - Look for permission mismatches in text
   - Check for generic or copied content
   - Verify technical accuracy

2. **Developer Investigation**

   - Research developer background
   - Check for other published apps
   - Verify contact information
   - Assess developer credibility

3. **Review Analysis**

   - Examine review patterns
   - Look for fake or generic reviews
   - Check review-to-download ratios
   - Identify review manipulation

4. **Risk Prioritization**
   - Categorize findings by severity
   - Create investigation priority list
   - Recommend immediate actions
   - Plan follow-up analysis

### Expected Learning Outcomes

- Develop pattern recognition skills
- Practice social engineering detection
- Learn investigation techniques
- Understand risk prioritization

### Sample Red Flags to Identify

- "SMS verification required for basic features"
- Missing developer information
- Generic app descriptions
- Suspicious permission requests
- Fake review patterns

## Scenario 3: Comprehensive Security Assessment

**Objective**: Create a complete security assessment report with risk prioritization

### Materials Provided

- Complete app package (manifest, resources, metadata)
- App store page information
- Network traffic analysis (simulated)
- Behavioral analysis data

### Exercise Steps

1. **Static Analysis**

   - Analyze manifest and permissions
   - Review code obfuscation levels
   - Check for dynamic loading indicators
   - Identify suspicious resources

2. **Dynamic Analysis**

   - Review network traffic patterns
   - Analyze app behavior during runtime
   - Check for data exfiltration attempts
   - Monitor permission usage

3. **Risk Assessment**

   - Calculate overall risk score
   - Prioritize findings by impact
   - Assess attack likelihood
   - Evaluate business impact

4. **Report Creation**
   - Write executive summary
   - Document detailed findings
   - Provide remediation steps
   - Include evidence and screenshots

### Expected Learning Outcomes

- Integrate multiple analysis techniques
- Practice comprehensive risk assessment
- Develop reporting skills
- Understand business impact

### Report Template Structure

1. **Executive Summary**
2. **App Information**
3. **Risk Assessment**
4. **Detailed Findings**
5. **Recommendations**
6. **Evidence**
7. **Conclusion**

## Scenario 4: Incident Response Simulation

**Objective**: Respond to a simulated security incident involving a malicious app

### Scenario Setup

- Malicious app discovered in production
- Users reporting suspicious behavior
- Need to assess impact and contain threat
- Required to provide recommendations

### Exercise Steps

1. **Initial Assessment**

   - Analyze reported symptoms
   - Review app permissions and behavior
   - Assess potential data exposure
   - Determine immediate threat level

2. **Impact Analysis**

   - Identify affected users
   - Assess data at risk
   - Calculate potential damage
   - Evaluate business impact

3. **Containment Planning**

   - Develop immediate response plan
   - Identify containment measures
   - Plan user communication
   - Coordinate with stakeholders

4. **Recovery Planning**
   - Develop remediation steps
   - Plan user notification process
   - Create prevention measures
   - Document lessons learned

### Expected Learning Outcomes

- Practice incident response procedures
- Develop crisis management skills
- Learn stakeholder communication
- Understand containment strategies

## Scenario 5: Threat Intelligence Analysis

**Objective**: Analyze threat intelligence data to identify attack patterns

### Materials Provided

- Threat intelligence reports
- Malware family information
- Attack campaign data
- IOCs (Indicators of Compromise)

### Exercise Steps

1. **Pattern Recognition**

   - Identify common attack techniques
   - Recognize malware family characteristics
   - Connect dots between different attacks
   - Develop threat landscape understanding

2. **IOC Analysis**

   - Analyze provided indicators
   - Identify new attack patterns
   - Assess threat relevance
   - Prioritize by risk level

3. **Intelligence Reporting**
   - Create threat intelligence summary
   - Provide actionable recommendations
   - Update security controls
   - Share findings with team

### Expected Learning Outcomes

- Develop threat intelligence skills
- Practice pattern recognition
- Learn intelligence analysis techniques
- Understand threat landscape

## Assessment Rubric

### Excellent (90-100%)

- Identifies all major red flags
- Provides detailed explanations
- Demonstrates deep understanding
- Offers creative solutions

### Good (80-89%)

- Identifies most red flags
- Provides adequate explanations
- Shows solid understanding
- Offers standard solutions

### Satisfactory (70-79%)

- Identifies basic red flags
- Provides basic explanations
- Shows basic understanding
- Offers basic solutions

### Needs Improvement (Below 70%)

- Misses major red flags
- Provides incomplete explanations
- Shows limited understanding
- Offers inadequate solutions

## Instructor Guidelines

### Preparation

- Review all materials before class
- Prepare additional examples if needed
- Set up appropriate tools and resources
- Plan time allocation for each exercise

### During Exercise

- Monitor student progress
- Provide hints when needed
- Encourage discussion and questions
- Facilitate group learning

### After Exercise

- Review student findings
- Provide detailed feedback
- Discuss correct answers
- Address common misconceptions

### Follow-up

- Assign additional practice exercises
- Provide additional resources
- Schedule review sessions
- Track student progress
