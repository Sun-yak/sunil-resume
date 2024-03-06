import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Resume extends StatefulWidget {
  const Resume({super.key});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 20,right: 20),
            constraints: const BoxConstraints(maxWidth: 768),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/ITsummit_2.jpg"),
                ),
                const Text("Sunil Nayak",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
                InkWell(
                    onTap: () {
                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: 'Yaksun143@gmail.com',
                        query: encodeQueryParameters(<String, String>{
                          'subject': '',
                        }),
                      );
                      launchUrl(emailLaunchUri);
                    },
                    child: const Text(
                      "Yaksun143@gmail.com",
                      style: TextStyle(color: Colors.blue),
                    )),
                InkWell(
                    onTap: () {
                      final Uri emailLaunchUri = Uri(
                        scheme: 'tel',
                        path: '+15015031147',
                      );
                      launchUrl(emailLaunchUri);
                    },
                    child: const Text("(501) 503-1147")),
                const SizedBox(height: 20),
                boldText("AD/IAM Administrator"),
                underlinedBoldText("Professional Summary:"),
                bulletedText(
                    "Experienced professional with 4+ years of Microsoft Active Directory (AD) /Azure AD, RSA, IAM, and Ticketing Systems such as ServiceNow, and JIRA, and Coding in JAVA, BeanShell, and PowerShell script."),
                bulletedText(
                    "Hands-on experience administering AD 2008/2012/2016 in a multi-site and multi-domain organization."),
                bulletedText(
                    "Proficient in user provisioning, access controls, and permissions management."),
                bulletedText(
                    "Good understanding of account management administering Active Directory, ensuring efficient user provisioning, access controls, and permissions management."),
                bulletedText(
                    "Strong analytical and problem-solving skills, with the ability to methodically diagnose and resolve highly visible production incidents. Adept at solving problems associated with projects and daily work, ensuring smooth operations and timely resolution of issues."),
                bulletedText(
                    "Implemented several out-of-box SailPoint IdentityIQ connectors like JDBC, LDAP, Azure AD, AD, delimited, etc. to connect to various client Systems."),
                bulletedText(
                    "Performed Integration with multiple applications such as AD, Exchange Online, RDBMS, Flat File & LDAP."),
                bulletedText(
                    "Strong experience in Quick link configuration and dynamic scoping in SailPoint IIQ."),
                bulletedText(
                    "Experienced implementing rules and custom configuration for SailPoint IIQ API. Modified rules and workflows to meet client needs and business standards."),
                bulletedText(
                    "Understanding of gathering, documenting, and validating access review requirements and processes."),
                bulletedText(
                    "Coded PowerShell scripts to manage AD accounts, Security Groups, and mailboxes."),
                bulletedText(
                    "Excellent oral and verbal communication skills. Able to work independently or with minimal supervision and perform well in a team setting."),
                const SizedBox(height: 30),
                underlinedBoldText("Technical Skills:"),
                const SizedBox(height: 18),
                Table(
                  border:
                      TableBorder.all(borderRadius: BorderRadius.circular(4)),
                  children: [
                    buildTableRow(
                        "Identity Access Management", "SailPoint, AD, LDAP"),
                    buildTableRow("Programming Languages", "Java, XML, SQL"),
                    buildTableRow(
                        "Databases", "Oracle, SQL Server, MySQL, DB2"),
                    buildTableRow(
                        "Web Server/Application Server", "Tomcat, WebLogic"),
                    buildTableRow("Tools/IDE", "Eclipse	"),
                    buildTableRow("Operating System", "Linux & Windows"),
                  ],
                ),
                const SizedBox(height: 30),
                underlinedBoldText("Professional Experience:"),
                const SizedBox(height: 18),
                boldText("ABC Inc."),
                boldText("SailPoint Admin/Developer"),
                const SizedBox(height: 20),
                underlinedBoldText("Responsibilities:"),
                const SizedBox(height: 20),
                bulletedText(
                    "Automated the creation, deletion, and modification of the exchange online mailbox during invocation of lifecycle events such as Joiner, Leaver, Mover, and Rehire."),
                bulletedText(
                    "Functioned as an advanced technical subject matter expert (SME) in Active Directory, demonstrating high technological proficiency."),
                bulletedText(
                    "Managed client requirements and configure SailPoint IIQ connectors for applications and the Contactor database."),
                bulletedText(
                    "Actively involved in Business requirements gathering, implementation solutions, and recommending the best approach.Actively involved in Business requirements gathering, implementation solutions, and recommending the best approach."),
                bulletedText(
                    "Ensured requirements gathering, processes, and use cases documented followed out-of-the-box configuration vs. customization as much as possible."),
                bulletedText(
                    "Deployed several out-of-box SailPoint connectors to connect various client Systems (JDBC, LDAP, AD, etc.)"),
                bulletedText(
                    "Worked on Radiant logic and developed web services with HRC."),
                bulletedText(
                    "Customized workflows based on customer/Client requirements."),
                bulletedText(
                    "Participated in and/or User Acceptance Testing and bug-related reengineering efforts."),
                bulletedText(
                    "Provided knowledge transfer and post production support activities, as necessary to colleagues and stakeholders."),
                underlinedBoldText("Professional Experience:"),
                const SizedBox(height: 18),
                boldText("XYZ Inc."),
                boldText("IT Specialist/Administrator"),
                const SizedBox(height: 20),
                underlinedBoldText("Responsibilities:"),
                const SizedBox(height: 20),
                bulletedText(
                    "Worked in troubleshooting data and application access issues, adjusting Active Directory properties as required."),
                bulletedText(
                    "Administered Active Directory account management, ensuring efficient user provisioning, access controls, and permissions management."),
                bulletedText(
                    "Performed advanced-level professional work in account administration, analyzing information to create and/or modify accounts for new and existing employees."),
                bulletedText(
                    "Documented solutions to address client problems related to Active Directory and presented the solutions in a clear and concise manner."),
                bulletedText(
                    "Prepared comprehensive technical and user documentation to provide effective technical assistance and support for clients/stakeholders and the support team."),
                bulletedText(
                    "Participated in user onboarding from various target systems such as Oracle E-Business, SAP HANA, Delimited file connector, Workday, JDBC, LDAP, etc."),
                bulletedText(
                    "Performed user certification for accesses and entitlements."),
                bulletedText(
                    "Created rules using Java BeanShell and SailPoint API to provide various functionalities to manage user accesses, provide reports and create documentation."),
                bulletedText(
                    "Implemented provisioning and role sod policies to prevent toxic combinations of entitlements and roles."),
                bulletedText(
                    "Worked on Role Based Access Control (RBAC) to assign roles based on user responsibilities. Followed the principle of least privileged access control."),
                const SizedBox(height: 50)
              ],
            ),
          ),
        ),
      )),
    );
  }

  TableRow buildTableRow(String heading, String text) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(4.0),
        child:
            Text(heading, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(text),
      )
    ]);
  }

  Align bulletedText(String s) => Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "• $s",
        textAlign: TextAlign.left,
      ));

  Align underlinedBoldText(String s) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Text(s.toString(),
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline)));
  }

  Align boldText(String s) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          s.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ));
  }
}
