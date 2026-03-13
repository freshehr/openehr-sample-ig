Logical: AdvanceInterventionInformation
Title: "ROSI - Advance Intervention information"
Parent: Element
Characteristics: #can-bind
Description: """[openEHR-EHR-COMPOSITION.anticipatory_care_information.v0] A framework to communicate information that has been captured and curated in anticipation of future need for care."""
* ^name = "AdvanceInterventionInformation"
* ^status = #active
* ^version = "1.3.0"
* ^url = "http://openehr.org/StructureDefinition/AdvanceInterventionInformation"
* codedText 1..1 DV_CODED_TEXT "coded_text" """[at0001] """
* codedText from AdvanceInterventionInformationCodedText (required)
* composer 1..1 PARTY_PROXY "composer" """[RM] The person primarily responsible for the content of the Composition (but not necessarily its committal into the EHR system). This is the identifier which should appear on the screen. It may or may not be the person who entered the data. When it is the patient, the special self instance of `PARTY_SELF` will be used."""
* context 1..1 EVENT_CONTEXT "Context" """[at0002] `COMPOSITION.context` - Documents the context information of a healthcare event involving the subject of care and the health system. The context information recorded here are independent of the attributes recorded in the version audit, which document the system interaction context, i.e. the context of a user interacting with the health record system. Healthcare events include patient contacts, and any other business activity, such as pathology investigations which take place on behalf of the patient."""
  * startTime 1..1 DV_DATE_TIME "start_time" """[RM] COMPOSITION.context.start_time - Start time of the clinical session or other kind of event during which a provider performs a service of any kind for the patient."""
  * setting 1..1 DV_CODED_TEXT "setting" """[RM] The setting in which the clinical session took place. Coded using the openEHR Terminology, setting group."""
  * setting from AdvanceInterventionInformationSetting (required)
  * xDSMetadata 0..1 CLUSTER "XDS Metadata" """[openEHR-EHR-CLUSTER.xds_metadata.v0] Additional composition metadata aligned with IHE-XDS which is not already available from the Reference Model COMPOSITION class."""
    * documentType 0..1 DV_CODED_TEXT "Document type" """[at0003] The code specifying the precise type of document from the user perspective. Normally selected from a valueset provided by the local IHE-XDS Affinity Domain or national standard."""
    * documentType from AdvanceInterventionInformationDocumentType (required)
  * patientSharing 0..1 CLUSTER "Patient sharing" """[openEHR-EHR-CLUSTER.patient_sharing_rosi.v0] patient sharing rosi"""
    * disableCPRDecisionSharingWithPatient 0..1 DV_CODED_TEXT "Disable CPR decision sharing with patient" """[at0003] """
    * disableCPRDecisionSharingWithPatient from AdvanceInterventionInformationDisableCPRDecisionSharingWithPatient (required)
    * reasonForNotSharingCPRDecision 0..1 DV_TEXT "Reason for not sharing CPR decision" """[at0004] """
  * gPSynchDetails 0..1 CLUSTER "GP synch details" """[openEHR-EHR-CLUSTER.gp_synch_rosi.v0] GP synch rosi"""
    * dateFirstSynchronised 0..1 DV_DATE_TIME "Date first synchronised" """[at0001] """
    * dateLastSynchronised 0..1 DV_DATE_TIME "Date last synchronised" """[at0002] """
  * careJourneyMetadata 0..* CLUSTER "Care journey metadata" """[openEHR-EHR-CLUSTER.care_journey_metadata.v0] Tp capture Care plan metadata"""
    * carePlanName 0..1 DV_TEXT "Care plan name" """[at0001] The name , preferably coded of the Care plan with which this journey is associated, and against which the composition was updated."""
    * carePlanIdentifier 0..1 DV_TEXT "Care plan identifier" """[at0002] The identifier , preferably coded, of the Care plan with which this journey is associated, and against which the composition was updated."""
    * patientJourneyIdentifier 0..1 DV_TEXT "Patient journey identifier" """[at0003] A patient-journey specific identifier i.e unique to a patient's journey along a specific care pathway."""
* AdvanceDecisionToRefuseTreatment 0..1 EVALUATION "Advance decision to refuse treatment" """[openEHR-EHR-EVALUATION.advance_care_directive.v1] A framework to communicate the preferences of an individual for future medical treatment and care."""
  * typeOfDirective 0..1 DV_CODED_TEXT "Type of directive" """[at0005] The type of advance care directive."""
  * typeOfDirective from AdvanceInterventionInformationTypeOfDirective (required)
  * status 0..1 DV_CODED_TEXT "Status" """[at0004] The status of the advance care directive."""
  * status from AdvanceInterventionInformationStatus (required)
  * directiveLocation 0..1 CLUSTER "Directive location" """[at0058] Information regarding where the advance care directive is stored and who has a copy of it."""
    * location 0..1 DV_TEXT "Location" """[at0030] Information regarding where the advance care directive is stored and how to gain access to it."""
    * aDRTAttachment 0..1 CLUSTER "ADRT attachment" """[openEHR-EHR-CLUSTER.multimedia_source.v0] A multimedia resource that is generated or acquired during the provision of healthcare."""
      * content 0..1 DV_MULTIMEDIA "Content" """[at0001] Digital representation of the resource."""
      * created 0..1 DV_DATE_TIME "Created" """[at0004] The time, date, partial date or period when the resource was generated or authored."""
  * lastUpdated 0..1 DV_DATE_TIME "Last updated" """[at0055] The date when this advance directive record was last updated."""
* WhatMattersToPatient 0..1 EVALUATION "What matters to patient" """[openEHR-EHR-EVALUATION.about_me.v0] About me"""
  * whatIMostValue 0..1 CLUSTER "What I most value" """[at0004] """
    * category 0..1 DV_TEXT "Category" """[at0008] """
    * narrative 0..1 DV_TEXT "Narrative" """[at0002] Narrative supplied by the patient about the topic."""
  * whatIMostFearWishToAvoid 0..1 CLUSTER "What I most fear/ wish to avoid" """[at0004] """
    * category 0..1 DV_TEXT "Category" """[at0008] """
    * narrative 0..1 DV_TEXT "Narrative" """[at0002] Narrative supplied by the patient about the topic."""
* MentalCapacityAssessment 0..1 OBSERVATION "Mental capacity assessment" """[openEHR-EHR-OBSERVATION.mental_capacity_assessment.v0] The ability of an individual to use and understand information to make or consent to a decision, plan or intervention."""
  * time 1..1 DV_DATE_TIME "time" """[RM] `OBSERVATION.EVENT.time` - Time of this Observation event. If the width is non-zero, it is the time point of the trailing edge of the event."""
  * decisionPlan 0..1 DV_TEXT "Decision/plan" """[at0004] Description of the specific decision or plan to which the mental capacity status and assessment details relate."""
  * personalCapacity 0..1 DV_TEXT "Personal capacity" """[at0005] The individual's mental capacity status."""
  * parentalResponsibility 0..1 DV_CODED_TEXT "Parental responsibility" """[at0021] """
  * parentalResponsibility from AdvanceInterventionInformationParentalResponsibility (preferred)
  * description 0..1 DV_TEXT "Description" """[at0009] Narrative description of the individual's mental capacity."""
* AdvanceInterventionDecisions 0..1 EVALUATION "Advance intervention decisions" """[openEHR-EHR-EVALUATION.advance_intervention_decisions.v1] Anticipatory decisions about the overall intent of care and possible interventions (including treatments, activities, and diagnostic or therapeutic procedures), asserted by a clinician."""
  * clinicalFocus 0..1 DV_TEXT "Clinical focus" """[at0002] The overall intent for future care and treatment for the individual."""
  * decisionsDescription 0..1 DV_TEXT "Decisions description" """[at0008] Narrative description about all advance intervention decisions, including the CPR decision."""
  * cPRDecision 0..1 DV_CODED_TEXT "CPR decision" """[at0009] Decision about the extent of cardiopulmonary resuscitation (CPR) intervention appropriate for this individual."""
  * cPRDecision from AdvanceInterventionInformationCPRDecision (required)
  * cPRIsUnlikelyToSucceed 0..1 CLUSTER "CPR  is unlikely to succeed" """[openEHR-EHR-CLUSTER.reason_for_dnacpr_decision.v0] Reason for DNACPR decision"""
    * reasonForCPRDecision 0..* DV_CODED_TEXT "Reason for CPR Decision" """[at0004] """
    * reasonForCPRDecision from AdvanceInterventionInformationReasonForCPRDecision (required)
    * comment 0..1 DV_TEXT "Comment" """[at0008] """
  * cPRNotInBestInterests 0..1 CLUSTER "CPR not in best interests" """[openEHR-EHR-CLUSTER.reason_for_dnacpr_decision.v0] Reason for DNACPR decision"""
    * reasonForCPRDecision 0..* DV_CODED_TEXT "Reason for CPR Decision" """[at0004] """
    * reasonForCPRDecision from AdvanceInterventionInformationReasonForCPRDecision2 (required)
    * comment 0..1 DV_TEXT "Comment" """[at0008] """
  * patientDoesNotWishToBeResuscitated 0..1 CLUSTER "Patient does not wish to be resuscitated" """[openEHR-EHR-CLUSTER.reason_for_dnacpr_decision.v0] Reason for DNACPR decision"""
    * reasonForCPRDecision 0..* DV_CODED_TEXT "Reason for CPR Decision" """[at0004] """
    * reasonForCPRDecision from AdvanceInterventionInformationReasonForCPRDecision3 (required)
    * comment 0..1 DV_TEXT "Comment" """[at0008] """
  * cPRDecisionLockStatus 0..1 CLUSTER "CPR decision lock status" """[openEHR-EHR-CLUSTER.cpr_decision_lock_status_rosi.v0] cpr decision lock status rosi"""
    * lockStatus 0..1 DV_CODED_TEXT "Lock status" """[at0001] To record the locked status of a ROSI CPR decision."""
    * lockStatus from AdvanceInterventionInformationLockStatus (required)
    * dNACPRRecordSource 0..1 DV_CODED_TEXT "DNACPR record source" """[at0004] """
    * dNACPRRecordSource from AdvanceInterventionInformationDNACPRRecordSource (required)
  * patientAwareness 0..1 DV_CODED_TEXT "Patient awareness" """[at0042] Narrative description about awareness of the Advance intervention decisions by the individual."""
  * patientAwareness from AdvanceInterventionInformationPatientAwareness (required)
  * familyAwareness 0..1 DV_CODED_TEXT "Family awareness" """[at0043] Narrative description about awareness of the Advance intervention decisions by family, carers or legal proxy."""
  * familyAwareness from AdvanceInterventionInformationFamilyAwareness (required)
  * additionalInformation 0..1 DV_TEXT "Additional information" """[at0044] Additional narrative about all advance intervention decisions, not captured in other fields."""
  * lastUpdated 0..1 DV_DATE_TIME "Last updated" """[at0046] The date and/or time when the Advance intervention decisions were last updated."""
  * cPRReviewDue 0..1 DV_DATE_TIME "CPR Review due" """[at0049] The date when review of the Advance intervention decisions are due."""
  * mandate 0..1 DV_CODED_TEXT "Mandate" """[at0050] Description of any legislation or other authoritative guidance that apply."""
  * mandate from AdvanceInterventionInformationMandate (preferred)
  * digitalRepresentation 0..1 CLUSTER "Digital representation" """[openEHR-EHR-CLUSTER.multimedia_source.v0] A multimedia resource that is generated or acquired during the provision of healthcare."""
    * content 0..1 DV_MULTIMEDIA "Content" """[at0001] Digital representation of the resource."""
    * created 0..1 DV_DATE_TIME "Created" """[at0004] The time, date, partial date or period when the resource was generated or authored."""
  * documentLocation 0..1 CLUSTER "Document location" """[at0052] Information about the physical or digital location of the advance intervention decisions record."""
    * location 0..1 DV_TEXT "Location" """[at0053] Physical or digital location of the Advance intervention decisions record."""
* AdvanceInterventionSignature 1..1 ACTION "Advance intervention signature" """[openEHR-EHR-ACTION.service.v0] A general clinical activity carried out for the patient to receive a specified service, advice or care from an expert healthcare provider."""
  * careflowStep 0..1 DV_CODED_TEXT "careflow_step" """[RM] `ISM_TRANSITION.care_flow_step` - The step in the careflow process which occurred as part of generating this action, e.g. dispense , start_administration. This attribute represents the clinical label for the activity, as opposed to current_state which represents the state machine (ISM) computable form. Defined in archetype."""
  * careflowStep from AdvanceInterventionInformationCareflowStep (required)
  * time 1..1 DV_DATE_TIME "time" """[RM] `ACTION.time` - Point in time at which this action took place."""
  * serviceName 0..1 DV_TEXT "Service name" """[at0011] Identification of the clinical service to be/being carried out."""
  * reason 0..1 DV_CODED_TEXT "Reason" """[at0012] Reason that the activity or care pathway step for the identified service was carried out."""
  * reason from AdvanceInterventionInformationReason (required)
  * signatory 0..1 CLUSTER "Signatory" """[openEHR-EHR-CLUSTER.contact_cc.v0] Contacts for patients and organisations (excluding practitioners)."""
    * position 0..* DV_TEXT "Position" """[at0001] The relationship between the subject and the contact. This field is only appropriate when the archetype is used for patient contacts, not for organisation contacts."""
    * name 0..1 CLUSTER "Name" """[openEHR-EHR-CLUSTER.name_cc.v0] Name details aligned with FHIR resource."""
      * use 1..1 DV_CODED_TEXT "Use" """[at0001] Identification of the purpose for the name."""
      * use from AdvanceInterventionInformationUse (required)
      * name 0..1 DV_TEXT "Name" """[at0009] A text representation of the full name."""
* AdvanceInterventionSeniorResponsibleClinicianSignature 1..1 ACTION "Advance intervention Senior responsible clinician signature" """[openEHR-EHR-ACTION.service.v0] A general clinical activity carried out for the patient to receive a specified service, advice or care from an expert healthcare provider."""
  * careflowStep 0..1 DV_CODED_TEXT "careflow_step" """[RM] `ISM_TRANSITION.care_flow_step` - The step in the careflow process which occurred as part of generating this action, e.g. dispense , start_administration. This attribute represents the clinical label for the activity, as opposed to current_state which represents the state machine (ISM) computable form. Defined in archetype."""
  * careflowStep from AdvanceInterventionInformationCareflowStep2 (required)
  * time 1..1 DV_DATE_TIME "time" """[RM] `ACTION.time` - Point in time at which this action took place."""
  * serviceName 0..1 DV_TEXT "Service name" """[at0011] Identification of the clinical service to be/being carried out."""
  * reason 0..1 DV_CODED_TEXT "Reason" """[at0012] Reason that the activity or care pathway step for the identified service was carried out."""
  * reason from AdvanceInterventionInformationReason2 (required)
  * signatureProxy 0..1 CLUSTER "Signature proxy" """[openEHR-EHR-CLUSTER.contact_cc.v0] Contacts for patients and organisations (excluding practitioners)."""
    * position 0..* DV_TEXT "Position" """[at0001] The relationship between the subject and the contact. This field is only appropriate when the archetype is used for patient contacts, not for organisation contacts."""
    * name 0..1 CLUSTER "Name" """[openEHR-EHR-CLUSTER.name_cc.v0] Name details aligned with FHIR resource."""
      * use 1..1 DV_CODED_TEXT "Use" """[at0001] Identification of the purpose for the name."""
      * use from AdvanceInterventionInformationUse2 (required)
      * name 0..1 DV_TEXT "Name" """[at0009] A text representation of the full name."""
  * seniorResponsibleClinician 0..1 CLUSTER "Senior responsible clinician" """[openEHR-EHR-CLUSTER.contact_cc.v0] Contacts for patients and organisations (excluding practitioners)."""
    * position 0..* DV_TEXT "Position" """[at0001] The relationship between the subject and the contact. This field is only appropriate when the archetype is used for patient contacts, not for organisation contacts."""
    * name 0..1 CLUSTER "Name" """[openEHR-EHR-CLUSTER.name_cc.v0] Name details aligned with FHIR resource."""
      * use 1..1 DV_CODED_TEXT "Use" """[at0001] Identification of the purpose for the name."""
      * use from AdvanceInterventionInformationUse3 (required)
      * name 0..1 DV_TEXT "Name" """[at0009] A text representation of the full name."""
* InvolvementInDecisionMaking 0..1 ADMIN_ENTRY "Involvement in decision making" """[openEHR-EHR-ADMIN_ENTRY.shared_decison_making_uk.v0] shared decison_making_uk"""
  * topic 0..1 DV_TEXT "Topic" """[at0002] """
  * patientLastingPowerOfAttorney 0..1 CLUSTER "Patient/ Lasting power of attorney" """[at0008] """
    * groupName 0..1 DV_TEXT "Group name" """[at0009] """
    * wasTopicDiscussed 0..1 DV_CODED_TEXT "Was topic discussed?" """[at0007] """
    * wasTopicDiscussed from AdvanceInterventionInformationWasTopicDiscussed (required)
    * summaryOfDiscussion 0..1 DV_TEXT "Summary of discussion" """[at0010] """
  * familyMainCarer 0..1 CLUSTER "Family / main carer" """[at0008] """
    * groupName 0..1 DV_TEXT "Group name" """[at0009] """
    * wasTopicDiscussed 0..1 DV_CODED_TEXT "Was topic discussed?" """[at0007] """
    * wasTopicDiscussed from AdvanceInterventionInformationWasTopicDiscussed2 (required)
    * summaryOfDiscussion 0..1 DV_TEXT "Summary of discussion" """[at0010] """
  * careTeam 0..1 CLUSTER "Care team" """[at0008] """
    * groupName 0..1 DV_TEXT "Group name" """[at0009] """
    * wasTopicDiscussed 0..1 DV_CODED_TEXT "Was topic discussed?" """[at0007] """
    * wasTopicDiscussed from AdvanceInterventionInformationWasTopicDiscussed3 (required)
    * summaryOfDiscussion 0..1 DV_TEXT "Summary of discussion" """[at0010] """

ValueSet: AdvanceInterventionInformationCodedText
Title: "coded_text"
* http://openehr.org/archetypes/openEHR-EHR-COMPOSITION.anticipatory_care_information.v0/CS#433 "event"


ValueSet: AdvanceInterventionInformationSetting
Title: "setting"


ValueSet: AdvanceInterventionInformationDocumentType
Title: "Document type"
* http://openehr.org/archetypes/openEHR-EHR-CLUSTER.xds_metadata.v0/CS#736366004 "Advance care plan"


ValueSet: AdvanceInterventionInformationDisableCPRDecisionSharingWithPatient
Title: "Disable CPR decision sharing with patient"
* http://openehr.org/archetypes/openEHR-EHR-CLUSTER.patient_sharing_rosi.v0/CS#at0007 "Enable sharing"
* http://openehr.org/archetypes/openEHR-EHR-CLUSTER.patient_sharing_rosi.v0/CS#at0008 "Disable sharing"


ValueSet: AdvanceInterventionInformationTypeOfDirective
Title: "Type of directive"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_care_directive.v1/CS#816301000000100 "Has advance decision to refuse treatment (Mental Capacity Act 2005)"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_care_directive.v1/CS#1052911000000106 "Advance decision to refuse treatment"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_care_directive.v1/CS#962601000000103 "Advance decision to refuse treatment retracted"


ValueSet: AdvanceInterventionInformationStatus
Title: "Status"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_care_directive.v1/CS#at0044 "Present"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_care_directive.v1/CS#at0045 "Absent"


ValueSet: AdvanceInterventionInformationParentalResponsibility
Title: "Parental responsibility"
* http://openehr.org/archetypes/openEHR-EHR-OBSERVATION.mental_capacity_assessment.v0/CS#at0022 "Those holding parental responsibility have been involved"


ValueSet: AdvanceInterventionInformationCPRDecision
Title: "CPR decision"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_intervention_decisions.v1/CS#450475007 "For attempted cardiopulmonary resuscitation"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_intervention_decisions.v1/CS#450476008 "Not for cardiopulmonary resuscitation"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_intervention_decisions.v1/CS#931761000000106 "Discussion about do not attempt cardiopulmonary resuscitation not appropriate at this time"


ValueSet: AdvanceInterventionInformationReasonForCPRDecision
Title: "Reason for CPR Decision"
* http://openehr.org/archetypes/openEHR-EHR-CLUSTER.reason_for_dnacpr_decision.v0/CS#at0005 "CPR is unlikely to be successful"


ValueSet: AdvanceInterventionInformationReasonForCPRDecision2
Title: "Reason for CPR Decision"
* http://openehr.org/archetypes/openEHR-EHR-CLUSTER.reason_for_dnacpr_decision.v0/CS#at0006 "Successful CPR is likely to result in a length and quality of life not in the best interests of the patient because"


ValueSet: AdvanceInterventionInformationReasonForCPRDecision3
Title: "Reason for CPR Decision"
* http://openehr.org/archetypes/openEHR-EHR-CLUSTER.reason_for_dnacpr_decision.v0/CS#at0007 "Patient does not want to be resuscitated as evidenced by"


ValueSet: AdvanceInterventionInformationLockStatus
Title: "Lock status"
* http://openehr.org/archetypes/openEHR-EHR-CLUSTER.cpr_decision_lock_status_rosi.v0/CS#at0002 "CPR decison is locked"
* http://openehr.org/archetypes/openEHR-EHR-CLUSTER.cpr_decision_lock_status_rosi.v0/CS#at0003 "CPR decision is not locked"


ValueSet: AdvanceInterventionInformationDNACPRRecordSource
Title: "DNACPR record source"
* http://openehr.org/archetypes/openEHR-EHR-CLUSTER.cpr_decision_lock_status_rosi.v0/CS#at0005 "Record a current DNACPR decision (from a paper from)"
* http://openehr.org/archetypes/openEHR-EHR-CLUSTER.cpr_decision_lock_status_rosi.v0/CS#at0006 "Create a new DNACPR decision"


ValueSet: AdvanceInterventionInformationPatientAwareness
Title: "Patient awareness"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_intervention_decisions.v1/CS#CPRPatientAware "Patient is aware of the CPR decision"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_intervention_decisions.v1/CS#CPRPatientNotAware "Patient is NOT aware of the CPR decision"


ValueSet: AdvanceInterventionInformationFamilyAwareness
Title: "Family awareness"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_intervention_decisions.v1/CS#CPRFamilyAware "Family is aware of the CPR decision"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_intervention_decisions.v1/CS#CPRFamilyNotAware "Family is NOT aware of the CPR decision"


ValueSet: AdvanceInterventionInformationMandate
Title: "Mandate"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_intervention_decisions.v1/CS#DNACPR "DNACPR form"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_intervention_decisions.v1/CS#RESPECT "ReSPECT form"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_intervention_decisions.v1/CS#PEACE "PEACE form"
* http://openehr.org/archetypes/openEHR-EHR-EVALUATION.advance_intervention_decisions.v1/CS#NONE "None - No existing CPR Decision Document"


ValueSet: AdvanceInterventionInformationCareflowStep
Title: "careflow_step"
* http://openehr.org/archetypes/openEHR-EHR-ACTION.service.v0/CS#at0002 "Service planned"
* http://openehr.org/archetypes/openEHR-EHR-ACTION.service.v0/CS#at0005 "Service activity complete"


ValueSet: AdvanceInterventionInformationReason
Title: "Reason"
* http://openehr.org/archetypes/openEHR-EHR-ACTION.service.v0/CS#NOTSIGNED "Not signed"
* http://openehr.org/archetypes/openEHR-EHR-ACTION.service.v0/CS#SIGNEDBY "Signed by Healthcare Professional making the decision"


ValueSet: AdvanceInterventionInformationUse
Title: "Use"
* http://openehr.org/archetypes/openEHR-EHR-CLUSTER.name_cc.v0/CS#at0002 "Usual"


ValueSet: AdvanceInterventionInformationCareflowStep2
Title: "careflow_step"
* http://openehr.org/archetypes/openEHR-EHR-ACTION.service.v0/CS#at0002 "Service planned"
* http://openehr.org/archetypes/openEHR-EHR-ACTION.service.v0/CS#at0005 "Service activity complete"


ValueSet: AdvanceInterventionInformationReason2
Title: "Reason"
* http://openehr.org/archetypes/openEHR-EHR-ACTION.service.v0/CS#NOTSIGNED "Not signed"
* http://openehr.org/archetypes/openEHR-EHR-ACTION.service.v0/CS#SIGNEDBY "Signed by Responsible Senior Clinician"
* http://openehr.org/archetypes/openEHR-EHR-ACTION.service.v0/CS#ONBEHALFOF "Signed on behalf of Responsible Senior Clinician"


ValueSet: AdvanceInterventionInformationUse2
Title: "Use"
* http://openehr.org/archetypes/openEHR-EHR-CLUSTER.name_cc.v0/CS#at0002 "Usual"


ValueSet: AdvanceInterventionInformationUse3
Title: "Use"
* http://openehr.org/archetypes/openEHR-EHR-CLUSTER.name_cc.v0/CS#at0002 "Usual"


ValueSet: AdvanceInterventionInformationWasTopicDiscussed
Title: "Was topic discussed?"
* http://openehr.org/archetypes/openEHR-EHR-ADMIN_ENTRY.shared_decison_making_uk.v0/CS#at0011 "Yes"
* http://openehr.org/archetypes/openEHR-EHR-ADMIN_ENTRY.shared_decison_making_uk.v0/CS#at0018 "No"


ValueSet: AdvanceInterventionInformationWasTopicDiscussed2
Title: "Was topic discussed?"
* http://openehr.org/archetypes/openEHR-EHR-ADMIN_ENTRY.shared_decison_making_uk.v0/CS#at0011 "Yes"
* http://openehr.org/archetypes/openEHR-EHR-ADMIN_ENTRY.shared_decison_making_uk.v0/CS#at0018 "No"


ValueSet: AdvanceInterventionInformationWasTopicDiscussed3
Title: "Was topic discussed?"
* http://openehr.org/archetypes/openEHR-EHR-ADMIN_ENTRY.shared_decison_making_uk.v0/CS#at0011 "Yes"
* http://openehr.org/archetypes/openEHR-EHR-ADMIN_ENTRY.shared_decison_making_uk.v0/CS#at0018 "No"
