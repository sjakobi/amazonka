{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.IoT
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.IoT where

import Data.Proxy
import Network.AWS.IoT
import Test.AWS.Fixture
import Test.AWS.IoT.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestListThingRegistrationTaskReports $
--             listThingRegistrationTaskReports
--
--         , requestCreateProvisioningClaim $
--             createProvisioningClaim
--
--         , requestUpdateIndexingConfiguration $
--             updateIndexingConfiguration
--
--         , requestCreatePolicy $
--             createPolicy
--
--         , requestDeleteCertificate $
--             deleteCertificate
--
--         , requestListSecurityProfiles $
--             listSecurityProfiles
--
--         , requestDeleteJobExecution $
--             deleteJobExecution
--
--         , requestListMitigationActions $
--             listMitigationActions
--
--         , requestStartDetectMitigationActionsTask $
--             startDetectMitigationActionsTask
--
--         , requestGetCardinality $
--             getCardinality
--
--         , requestListViolationEvents $
--             listViolationEvents
--
--         , requestUpdateCertificate $
--             updateCertificate
--
--         , requestDeleteMitigationAction $
--             deleteMitigationAction
--
--         , requestUpdateMitigationAction $
--             updateMitigationAction
--
--         , requestDescribeProvisioningTemplate $
--             describeProvisioningTemplate
--
--         , requestListPolicies $
--             listPolicies
--
--         , requestCreateDimension $
--             createDimension
--
--         , requestUpdateDomainConfiguration $
--             updateDomainConfiguration
--
--         , requestCancelJob $
--             cancelJob
--
--         , requestListAuditTasks $
--             listAuditTasks
--
--         , requestRejectCertificateTransfer $
--             rejectCertificateTransfer
--
--         , requestDeletePolicy $
--             deletePolicy
--
--         , requestSetLoggingOptions $
--             setLoggingOptions
--
--         , requestCreateMitigationAction $
--             createMitigationAction
--
--         , requestGetTopicRule $
--             getTopicRule
--
--         , requestDescribeThingType $
--             describeThingType
--
--         , requestListThingsInThingGroup $
--             listThingsInThingGroup
--
--         , requestDescribeScheduledAudit $
--             describeScheduledAudit
--
--         , requestListDomainConfigurations $
--             listDomainConfigurations
--
--         , requestDeleteDomainConfiguration $
--             deleteDomainConfiguration
--
--         , requestGetV2LoggingOptions $
--             getV2LoggingOptions
--
--         , requestCreateSecurityProfile $
--             createSecurityProfile
--
--         , requestDeleteTopicRule $
--             deleteTopicRule
--
--         , requestDeleteCACertificate $
--             deleteCACertificate
--
--         , requestDeleteCustomMetric $
--             deleteCustomMetric
--
--         , requestUpdateCustomMetric $
--             updateCustomMetric
--
--         , requestCancelAuditTask $
--             cancelAuditTask
--
--         , requestListRoleAliases $
--             listRoleAliases
--
--         , requestStartAuditMitigationActionsTask $
--             startAuditMitigationActionsTask
--
--         , requestAttachSecurityProfile $
--             attachSecurityProfile
--
--         , requestDeleteJob $
--             deleteJob
--
--         , requestTransferCertificate $
--             transferCertificate
--
--         , requestCreateKeysAndCertificate $
--             createKeysAndCertificate
--
--         , requestUpdateCACertificate $
--             updateCACertificate
--
--         , requestUpdateJob $
--             updateJob
--
--         , requestCreateRoleAlias $
--             createRoleAlias
--
--         , requestListThingsInBillingGroup $
--             listThingsInBillingGroup
--
--         , requestListTargetsForSecurityProfile $
--             listTargetsForSecurityProfile
--
--         , requestListCustomMetrics $
--             listCustomMetrics
--
--         , requestDescribeProvisioningTemplateVersion $
--             describeProvisioningTemplateVersion
--
--         , requestGetPercentiles $
--             getPercentiles
--
--         , requestCreatePolicyVersion $
--             createPolicyVersion
--
--         , requestDescribeEndpoint $
--             describeEndpoint
--
--         , requestSetDefaultPolicyVersion $
--             setDefaultPolicyVersion
--
--         , requestCreateCustomMetric $
--             createCustomMetric
--
--         , requestDisableTopicRule $
--             disableTopicRule
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDescribeAuditMitigationActionsTask $
--             describeAuditMitigationActionsTask
--
--         , requestSetV2LoggingLevel $
--             setV2LoggingLevel
--
--         , requestListJobExecutionsForThing $
--             listJobExecutionsForThing
--
--         , requestCreateThing $
--             createThing
--
--         , requestDescribeCertificate $
--             describeCertificate
--
--         , requestUpdateProvisioningTemplate $
--             updateProvisioningTemplate
--
--         , requestStartThingRegistrationTask $
--             startThingRegistrationTask
--
--         , requestSetDefaultAuthorizer $
--             setDefaultAuthorizer
--
--         , requestDeleteProvisioningTemplate $
--             deleteProvisioningTemplate
--
--         , requestDescribeMitigationAction $
--             describeMitigationAction
--
--         , requestDeleteV2LoggingLevel $
--             deleteV2LoggingLevel
--
--         , requestDescribeJobExecution $
--             describeJobExecution
--
--         , requestStopThingRegistrationTask $
--             stopThingRegistrationTask
--
--         , requestCreateScheduledAudit $
--             createScheduledAudit
--
--         , requestGetIndexingConfiguration $
--             getIndexingConfiguration
--
--         , requestTagResource $
--             tagResource
--
--         , requestListV2LoggingLevels $
--             listV2LoggingLevels
--
--         , requestListProvisioningTemplates $
--             listProvisioningTemplates
--
--         , requestListAuditMitigationActionsExecutions $
--             listAuditMitigationActionsExecutions
--
--         , requestDeleteAuditSuppression $
--             deleteAuditSuppression
--
--         , requestListDetectMitigationActionsTasks $
--             listDetectMitigationActionsTasks
--
--         , requestUpdateStream $
--             updateStream
--
--         , requestDeleteRegistrationCode $
--             deleteRegistrationCode
--
--         , requestCreateAuthorizer $
--             createAuthorizer
--
--         , requestDescribeDimension $
--             describeDimension
--
--         , requestDeleteStream $
--             deleteStream
--
--         , requestDeleteAccountAuditConfiguration $
--             deleteAccountAuditConfiguration
--
--         , requestListThings $
--             listThings
--
--         , requestSetV2LoggingOptions $
--             setV2LoggingOptions
--
--         , requestUpdateThing $
--             updateThing
--
--         , requestAddThingToThingGroup $
--             addThingToThingGroup
--
--         , requestGetLoggingOptions $
--             getLoggingOptions
--
--         , requestUpdateAuditSuppression $
--             updateAuditSuppression
--
--         , requestListScheduledAudits $
--             listScheduledAudits
--
--         , requestAttachThingPrincipal $
--             attachThingPrincipal
--
--         , requestDeleteThing $
--             deleteThing
--
--         , requestListCertificatesByCA $
--             listCertificatesByCA
--
--         , requestListThingGroupsForThing $
--             listThingGroupsForThing
--
--         , requestUpdateBillingGroup $
--             updateBillingGroup
--
--         , requestDeleteBillingGroup $
--             deleteBillingGroup
--
--         , requestUpdateAccountAuditConfiguration $
--             updateAccountAuditConfiguration
--
--         , requestDescribeThingRegistrationTask $
--             describeThingRegistrationTask
--
--         , requestDescribeCustomMetric $
--             describeCustomMetric
--
--         , requestDescribeCACertificate $
--             describeCACertificate
--
--         , requestDeleteProvisioningTemplateVersion $
--             deleteProvisioningTemplateVersion
--
--         , requestDeleteOTAUpdate $
--             deleteOTAUpdate
--
--         , requestRegisterCertificateWithoutCA $
--             registerCertificateWithoutCA
--
--         , requestListDetectMitigationActionsExecutions $
--             listDetectMitigationActionsExecutions
--
--         , requestCreateDynamicThingGroup $
--             createDynamicThingGroup
--
--         , requestGetRegistrationCode $
--             getRegistrationCode
--
--         , requestDescribeJob $
--             describeJob
--
--         , requestDetachSecurityProfile $
--             detachSecurityProfile
--
--         , requestTestInvokeAuthorizer $
--             testInvokeAuthorizer
--
--         , requestRemoveThingFromThingGroup $
--             removeThingFromThingGroup
--
--         , requestGetBehaviorModelTrainingSummaries $
--             getBehaviorModelTrainingSummaries
--
--         , requestCreateProvisioningTemplateVersion $
--             createProvisioningTemplateVersion
--
--         , requestListPrincipalThings $
--             listPrincipalThings
--
--         , requestListAuditMitigationActionsTasks $
--             listAuditMitigationActionsTasks
--
--         , requestDescribeRoleAlias $
--             describeRoleAlias
--
--         , requestCreateTopicRuleDestination $
--             createTopicRuleDestination
--
--         , requestCreateOTAUpdate $
--             createOTAUpdate
--
--         , requestDeleteDynamicThingGroup $
--             deleteDynamicThingGroup
--
--         , requestUpdateDynamicThingGroup $
--             updateDynamicThingGroup
--
--         , requestDetachPolicy $
--             detachPolicy
--
--         , requestListThingPrincipals $
--             listThingPrincipals
--
--         , requestDescribeDefaultAuthorizer $
--             describeDefaultAuthorizer
--
--         , requestCreateThingGroup $
--             createThingGroup
--
--         , requestRegisterCertificate $
--             registerCertificate
--
--         , requestDeleteSecurityProfile $
--             deleteSecurityProfile
--
--         , requestValidateSecurityProfileBehaviors $
--             validateSecurityProfileBehaviors
--
--         , requestCreateDomainConfiguration $
--             createDomainConfiguration
--
--         , requestGetPolicyVersion $
--             getPolicyVersion
--
--         , requestListCertificates $
--             listCertificates
--
--         , requestUpdateSecurityProfile $
--             updateSecurityProfile
--
--         , requestListActiveViolations $
--             listActiveViolations
--
--         , requestDescribeAuthorizer $
--             describeAuthorizer
--
--         , requestDescribeAccountAuditConfiguration $
--             describeAccountAuditConfiguration
--
--         , requestDeprecateThingType $
--             deprecateThingType
--
--         , requestDeleteDimension $
--             deleteDimension
--
--         , requestDescribeBillingGroup $
--             describeBillingGroup
--
--         , requestUpdateDimension $
--             updateDimension
--
--         , requestConfirmTopicRuleDestination $
--             confirmTopicRuleDestination
--
--         , requestDescribeDetectMitigationActionsTask $
--             describeDetectMitigationActionsTask
--
--         , requestListThingRegistrationTasks $
--             listThingRegistrationTasks
--
--         , requestListDimensions $
--             listDimensions
--
--         , requestDescribeAuditSuppression $
--             describeAuditSuppression
--
--         , requestListAuditFindings $
--             listAuditFindings
--
--         , requestDescribeThing $
--             describeThing
--
--         , requestDescribeStream $
--             describeStream
--
--         , requestDetachThingPrincipal $
--             detachThingPrincipal
--
--         , requestStartOnDemandAuditTask $
--             startOnDemandAuditTask
--
--         , requestListAttachedPolicies $
--             listAttachedPolicies
--
--         , requestGetPolicy $
--             getPolicy
--
--         , requestListCACertificates $
--             listCACertificates
--
--         , requestEnableTopicRule $
--             enableTopicRule
--
--         , requestListJobs $
--             listJobs
--
--         , requestRegisterCACertificate $
--             registerCACertificate
--
--         , requestListSecurityProfilesForTarget $
--             listSecurityProfilesForTarget
--
--         , requestUpdateEventConfigurations $
--             updateEventConfigurations
--
--         , requestGetJobDocument $
--             getJobDocument
--
--         , requestListTopicRules $
--             listTopicRules
--
--         , requestDescribeThingGroup $
--             describeThingGroup
--
--         , requestAcceptCertificateTransfer $
--             acceptCertificateTransfer
--
--         , requestUpdateThingGroupsForThing $
--             updateThingGroupsForThing
--
--         , requestListTargetsForPolicy $
--             listTargetsForPolicy
--
--         , requestReplaceTopicRule $
--             replaceTopicRule
--
--         , requestDescribeIndex $
--             describeIndex
--
--         , requestDeletePolicyVersion $
--             deletePolicyVersion
--
--         , requestAttachPolicy $
--             attachPolicy
--
--         , requestClearDefaultAuthorizer $
--             clearDefaultAuthorizer
--
--         , requestCreateTopicRule $
--             createTopicRule
--
--         , requestCreateJob $
--             createJob
--
--         , requestUpdateRoleAlias $
--             updateRoleAlias
--
--         , requestDeleteRoleAlias $
--             deleteRoleAlias
--
--         , requestGetStatistics $
--             getStatistics
--
--         , requestAssociateTargetsWithJob $
--             associateTargetsWithJob
--
--         , requestListPolicyVersions $
--             listPolicyVersions
--
--         , requestCancelJobExecution $
--             cancelJobExecution
--
--         , requestCancelCertificateTransfer $
--             cancelCertificateTransfer
--
--         , requestCreateThingType $
--             createThingType
--
--         , requestUpdateAuthorizer $
--             updateAuthorizer
--
--         , requestSearchIndex $
--             searchIndex
--
--         , requestDescribeSecurityProfile $
--             describeSecurityProfile
--
--         , requestListJobExecutionsForJob $
--             listJobExecutionsForJob
--
--         , requestCreateBillingGroup $
--             createBillingGroup
--
--         , requestCancelAuditMitigationActionsTask $
--             cancelAuditMitigationActionsTask
--
--         , requestCreateStream $
--             createStream
--
--         , requestRemoveThingFromBillingGroup $
--             removeThingFromBillingGroup
--
--         , requestListAuthorizers $
--             listAuthorizers
--
--         , requestDeleteAuthorizer $
--             deleteAuthorizer
--
--         , requestCreateAuditSuppression $
--             createAuditSuppression
--
--         , requestCreateProvisioningTemplate $
--             createProvisioningTemplate
--
--         , requestGetTopicRuleDestination $
--             getTopicRuleDestination
--
--         , requestDescribeAuditTask $
--             describeAuditTask
--
--         , requestDescribeDomainConfiguration $
--             describeDomainConfiguration
--
--         , requestListStreams $
--             listStreams
--
--         , requestListAuditSuppressions $
--             listAuditSuppressions
--
--         , requestCreateCertificateFromCSR $
--             createCertificateFromCSR
--
--         , requestGetOTAUpdate $
--             getOTAUpdate
--
--         , requestGetEffectivePolicies $
--             getEffectivePolicies
--
--         , requestUpdateScheduledAudit $
--             updateScheduledAudit
--
--         , requestDescribeAuditFinding $
--             describeAuditFinding
--
--         , requestDeleteScheduledAudit $
--             deleteScheduledAudit
--
--         , requestListBillingGroups $
--             listBillingGroups
--
--         , requestTestAuthorization $
--             testAuthorization
--
--         , requestListThingTypes $
--             listThingTypes
--
--         , requestListIndices $
--             listIndices
--
--         , requestDeleteThingType $
--             deleteThingType
--
--         , requestRegisterThing $
--             registerThing
--
--         , requestListOutgoingCertificates $
--             listOutgoingCertificates
--
--         , requestDeleteTopicRuleDestination $
--             deleteTopicRuleDestination
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestListTopicRuleDestinations $
--             listTopicRuleDestinations
--
--         , requestCancelDetectMitigationActionsTask $
--             cancelDetectMitigationActionsTask
--
--         , requestAddThingToBillingGroup $
--             addThingToBillingGroup
--
--         , requestDeleteThingGroup $
--             deleteThingGroup
--
--         , requestDescribeEventConfigurations $
--             describeEventConfigurations
--
--         , requestUpdateTopicRuleDestination $
--             updateTopicRuleDestination
--
--         , requestListOTAUpdates $
--             listOTAUpdates
--
--         , requestListThingGroups $
--             listThingGroups
--
--         , requestListProvisioningTemplateVersions $
--             listProvisioningTemplateVersions
--
--         , requestUpdateThingGroup $
--             updateThingGroup
--
--           ]

--     , testGroup "response"
--         [ responseListThingRegistrationTaskReports $
--             listThingRegistrationTaskReportsResponse
--
--         , responseCreateProvisioningClaim $
--             createProvisioningClaimResponse
--
--         , responseUpdateIndexingConfiguration $
--             updateIndexingConfigurationResponse
--
--         , responseCreatePolicy $
--             createPolicyResponse
--
--         , responseDeleteCertificate $
--             deleteCertificateResponse
--
--         , responseListSecurityProfiles $
--             listSecurityProfilesResponse
--
--         , responseDeleteJobExecution $
--             deleteJobExecutionResponse
--
--         , responseListMitigationActions $
--             listMitigationActionsResponse
--
--         , responseStartDetectMitigationActionsTask $
--             startDetectMitigationActionsTaskResponse
--
--         , responseGetCardinality $
--             getCardinalityResponse
--
--         , responseListViolationEvents $
--             listViolationEventsResponse
--
--         , responseUpdateCertificate $
--             updateCertificateResponse
--
--         , responseDeleteMitigationAction $
--             deleteMitigationActionResponse
--
--         , responseUpdateMitigationAction $
--             updateMitigationActionResponse
--
--         , responseDescribeProvisioningTemplate $
--             describeProvisioningTemplateResponse
--
--         , responseListPolicies $
--             listPoliciesResponse
--
--         , responseCreateDimension $
--             createDimensionResponse
--
--         , responseUpdateDomainConfiguration $
--             updateDomainConfigurationResponse
--
--         , responseCancelJob $
--             cancelJobResponse
--
--         , responseListAuditTasks $
--             listAuditTasksResponse
--
--         , responseRejectCertificateTransfer $
--             rejectCertificateTransferResponse
--
--         , responseDeletePolicy $
--             deletePolicyResponse
--
--         , responseSetLoggingOptions $
--             setLoggingOptionsResponse
--
--         , responseCreateMitigationAction $
--             createMitigationActionResponse
--
--         , responseGetTopicRule $
--             getTopicRuleResponse
--
--         , responseDescribeThingType $
--             describeThingTypeResponse
--
--         , responseListThingsInThingGroup $
--             listThingsInThingGroupResponse
--
--         , responseDescribeScheduledAudit $
--             describeScheduledAuditResponse
--
--         , responseListDomainConfigurations $
--             listDomainConfigurationsResponse
--
--         , responseDeleteDomainConfiguration $
--             deleteDomainConfigurationResponse
--
--         , responseGetV2LoggingOptions $
--             getV2LoggingOptionsResponse
--
--         , responseCreateSecurityProfile $
--             createSecurityProfileResponse
--
--         , responseDeleteTopicRule $
--             deleteTopicRuleResponse
--
--         , responseDeleteCACertificate $
--             deleteCACertificateResponse
--
--         , responseDeleteCustomMetric $
--             deleteCustomMetricResponse
--
--         , responseUpdateCustomMetric $
--             updateCustomMetricResponse
--
--         , responseCancelAuditTask $
--             cancelAuditTaskResponse
--
--         , responseListRoleAliases $
--             listRoleAliasesResponse
--
--         , responseStartAuditMitigationActionsTask $
--             startAuditMitigationActionsTaskResponse
--
--         , responseAttachSecurityProfile $
--             attachSecurityProfileResponse
--
--         , responseDeleteJob $
--             deleteJobResponse
--
--         , responseTransferCertificate $
--             transferCertificateResponse
--
--         , responseCreateKeysAndCertificate $
--             createKeysAndCertificateResponse
--
--         , responseUpdateCACertificate $
--             updateCACertificateResponse
--
--         , responseUpdateJob $
--             updateJobResponse
--
--         , responseCreateRoleAlias $
--             createRoleAliasResponse
--
--         , responseListThingsInBillingGroup $
--             listThingsInBillingGroupResponse
--
--         , responseListTargetsForSecurityProfile $
--             listTargetsForSecurityProfileResponse
--
--         , responseListCustomMetrics $
--             listCustomMetricsResponse
--
--         , responseDescribeProvisioningTemplateVersion $
--             describeProvisioningTemplateVersionResponse
--
--         , responseGetPercentiles $
--             getPercentilesResponse
--
--         , responseCreatePolicyVersion $
--             createPolicyVersionResponse
--
--         , responseDescribeEndpoint $
--             describeEndpointResponse
--
--         , responseSetDefaultPolicyVersion $
--             setDefaultPolicyVersionResponse
--
--         , responseCreateCustomMetric $
--             createCustomMetricResponse
--
--         , responseDisableTopicRule $
--             disableTopicRuleResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDescribeAuditMitigationActionsTask $
--             describeAuditMitigationActionsTaskResponse
--
--         , responseSetV2LoggingLevel $
--             setV2LoggingLevelResponse
--
--         , responseListJobExecutionsForThing $
--             listJobExecutionsForThingResponse
--
--         , responseCreateThing $
--             createThingResponse
--
--         , responseDescribeCertificate $
--             describeCertificateResponse
--
--         , responseUpdateProvisioningTemplate $
--             updateProvisioningTemplateResponse
--
--         , responseStartThingRegistrationTask $
--             startThingRegistrationTaskResponse
--
--         , responseSetDefaultAuthorizer $
--             setDefaultAuthorizerResponse
--
--         , responseDeleteProvisioningTemplate $
--             deleteProvisioningTemplateResponse
--
--         , responseDescribeMitigationAction $
--             describeMitigationActionResponse
--
--         , responseDeleteV2LoggingLevel $
--             deleteV2LoggingLevelResponse
--
--         , responseDescribeJobExecution $
--             describeJobExecutionResponse
--
--         , responseStopThingRegistrationTask $
--             stopThingRegistrationTaskResponse
--
--         , responseCreateScheduledAudit $
--             createScheduledAuditResponse
--
--         , responseGetIndexingConfiguration $
--             getIndexingConfigurationResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseListV2LoggingLevels $
--             listV2LoggingLevelsResponse
--
--         , responseListProvisioningTemplates $
--             listProvisioningTemplatesResponse
--
--         , responseListAuditMitigationActionsExecutions $
--             listAuditMitigationActionsExecutionsResponse
--
--         , responseDeleteAuditSuppression $
--             deleteAuditSuppressionResponse
--
--         , responseListDetectMitigationActionsTasks $
--             listDetectMitigationActionsTasksResponse
--
--         , responseUpdateStream $
--             updateStreamResponse
--
--         , responseDeleteRegistrationCode $
--             deleteRegistrationCodeResponse
--
--         , responseCreateAuthorizer $
--             createAuthorizerResponse
--
--         , responseDescribeDimension $
--             describeDimensionResponse
--
--         , responseDeleteStream $
--             deleteStreamResponse
--
--         , responseDeleteAccountAuditConfiguration $
--             deleteAccountAuditConfigurationResponse
--
--         , responseListThings $
--             listThingsResponse
--
--         , responseSetV2LoggingOptions $
--             setV2LoggingOptionsResponse
--
--         , responseUpdateThing $
--             updateThingResponse
--
--         , responseAddThingToThingGroup $
--             addThingToThingGroupResponse
--
--         , responseGetLoggingOptions $
--             getLoggingOptionsResponse
--
--         , responseUpdateAuditSuppression $
--             updateAuditSuppressionResponse
--
--         , responseListScheduledAudits $
--             listScheduledAuditsResponse
--
--         , responseAttachThingPrincipal $
--             attachThingPrincipalResponse
--
--         , responseDeleteThing $
--             deleteThingResponse
--
--         , responseListCertificatesByCA $
--             listCertificatesByCAResponse
--
--         , responseListThingGroupsForThing $
--             listThingGroupsForThingResponse
--
--         , responseUpdateBillingGroup $
--             updateBillingGroupResponse
--
--         , responseDeleteBillingGroup $
--             deleteBillingGroupResponse
--
--         , responseUpdateAccountAuditConfiguration $
--             updateAccountAuditConfigurationResponse
--
--         , responseDescribeThingRegistrationTask $
--             describeThingRegistrationTaskResponse
--
--         , responseDescribeCustomMetric $
--             describeCustomMetricResponse
--
--         , responseDescribeCACertificate $
--             describeCACertificateResponse
--
--         , responseDeleteProvisioningTemplateVersion $
--             deleteProvisioningTemplateVersionResponse
--
--         , responseDeleteOTAUpdate $
--             deleteOTAUpdateResponse
--
--         , responseRegisterCertificateWithoutCA $
--             registerCertificateWithoutCAResponse
--
--         , responseListDetectMitigationActionsExecutions $
--             listDetectMitigationActionsExecutionsResponse
--
--         , responseCreateDynamicThingGroup $
--             createDynamicThingGroupResponse
--
--         , responseGetRegistrationCode $
--             getRegistrationCodeResponse
--
--         , responseDescribeJob $
--             describeJobResponse
--
--         , responseDetachSecurityProfile $
--             detachSecurityProfileResponse
--
--         , responseTestInvokeAuthorizer $
--             testInvokeAuthorizerResponse
--
--         , responseRemoveThingFromThingGroup $
--             removeThingFromThingGroupResponse
--
--         , responseGetBehaviorModelTrainingSummaries $
--             getBehaviorModelTrainingSummariesResponse
--
--         , responseCreateProvisioningTemplateVersion $
--             createProvisioningTemplateVersionResponse
--
--         , responseListPrincipalThings $
--             listPrincipalThingsResponse
--
--         , responseListAuditMitigationActionsTasks $
--             listAuditMitigationActionsTasksResponse
--
--         , responseDescribeRoleAlias $
--             describeRoleAliasResponse
--
--         , responseCreateTopicRuleDestination $
--             createTopicRuleDestinationResponse
--
--         , responseCreateOTAUpdate $
--             createOTAUpdateResponse
--
--         , responseDeleteDynamicThingGroup $
--             deleteDynamicThingGroupResponse
--
--         , responseUpdateDynamicThingGroup $
--             updateDynamicThingGroupResponse
--
--         , responseDetachPolicy $
--             detachPolicyResponse
--
--         , responseListThingPrincipals $
--             listThingPrincipalsResponse
--
--         , responseDescribeDefaultAuthorizer $
--             describeDefaultAuthorizerResponse
--
--         , responseCreateThingGroup $
--             createThingGroupResponse
--
--         , responseRegisterCertificate $
--             registerCertificateResponse
--
--         , responseDeleteSecurityProfile $
--             deleteSecurityProfileResponse
--
--         , responseValidateSecurityProfileBehaviors $
--             validateSecurityProfileBehaviorsResponse
--
--         , responseCreateDomainConfiguration $
--             createDomainConfigurationResponse
--
--         , responseGetPolicyVersion $
--             getPolicyVersionResponse
--
--         , responseListCertificates $
--             listCertificatesResponse
--
--         , responseUpdateSecurityProfile $
--             updateSecurityProfileResponse
--
--         , responseListActiveViolations $
--             listActiveViolationsResponse
--
--         , responseDescribeAuthorizer $
--             describeAuthorizerResponse
--
--         , responseDescribeAccountAuditConfiguration $
--             describeAccountAuditConfigurationResponse
--
--         , responseDeprecateThingType $
--             deprecateThingTypeResponse
--
--         , responseDeleteDimension $
--             deleteDimensionResponse
--
--         , responseDescribeBillingGroup $
--             describeBillingGroupResponse
--
--         , responseUpdateDimension $
--             updateDimensionResponse
--
--         , responseConfirmTopicRuleDestination $
--             confirmTopicRuleDestinationResponse
--
--         , responseDescribeDetectMitigationActionsTask $
--             describeDetectMitigationActionsTaskResponse
--
--         , responseListThingRegistrationTasks $
--             listThingRegistrationTasksResponse
--
--         , responseListDimensions $
--             listDimensionsResponse
--
--         , responseDescribeAuditSuppression $
--             describeAuditSuppressionResponse
--
--         , responseListAuditFindings $
--             listAuditFindingsResponse
--
--         , responseDescribeThing $
--             describeThingResponse
--
--         , responseDescribeStream $
--             describeStreamResponse
--
--         , responseDetachThingPrincipal $
--             detachThingPrincipalResponse
--
--         , responseStartOnDemandAuditTask $
--             startOnDemandAuditTaskResponse
--
--         , responseListAttachedPolicies $
--             listAttachedPoliciesResponse
--
--         , responseGetPolicy $
--             getPolicyResponse
--
--         , responseListCACertificates $
--             listCACertificatesResponse
--
--         , responseEnableTopicRule $
--             enableTopicRuleResponse
--
--         , responseListJobs $
--             listJobsResponse
--
--         , responseRegisterCACertificate $
--             registerCACertificateResponse
--
--         , responseListSecurityProfilesForTarget $
--             listSecurityProfilesForTargetResponse
--
--         , responseUpdateEventConfigurations $
--             updateEventConfigurationsResponse
--
--         , responseGetJobDocument $
--             getJobDocumentResponse
--
--         , responseListTopicRules $
--             listTopicRulesResponse
--
--         , responseDescribeThingGroup $
--             describeThingGroupResponse
--
--         , responseAcceptCertificateTransfer $
--             acceptCertificateTransferResponse
--
--         , responseUpdateThingGroupsForThing $
--             updateThingGroupsForThingResponse
--
--         , responseListTargetsForPolicy $
--             listTargetsForPolicyResponse
--
--         , responseReplaceTopicRule $
--             replaceTopicRuleResponse
--
--         , responseDescribeIndex $
--             describeIndexResponse
--
--         , responseDeletePolicyVersion $
--             deletePolicyVersionResponse
--
--         , responseAttachPolicy $
--             attachPolicyResponse
--
--         , responseClearDefaultAuthorizer $
--             clearDefaultAuthorizerResponse
--
--         , responseCreateTopicRule $
--             createTopicRuleResponse
--
--         , responseCreateJob $
--             createJobResponse
--
--         , responseUpdateRoleAlias $
--             updateRoleAliasResponse
--
--         , responseDeleteRoleAlias $
--             deleteRoleAliasResponse
--
--         , responseGetStatistics $
--             getStatisticsResponse
--
--         , responseAssociateTargetsWithJob $
--             associateTargetsWithJobResponse
--
--         , responseListPolicyVersions $
--             listPolicyVersionsResponse
--
--         , responseCancelJobExecution $
--             cancelJobExecutionResponse
--
--         , responseCancelCertificateTransfer $
--             cancelCertificateTransferResponse
--
--         , responseCreateThingType $
--             createThingTypeResponse
--
--         , responseUpdateAuthorizer $
--             updateAuthorizerResponse
--
--         , responseSearchIndex $
--             searchIndexResponse
--
--         , responseDescribeSecurityProfile $
--             describeSecurityProfileResponse
--
--         , responseListJobExecutionsForJob $
--             listJobExecutionsForJobResponse
--
--         , responseCreateBillingGroup $
--             createBillingGroupResponse
--
--         , responseCancelAuditMitigationActionsTask $
--             cancelAuditMitigationActionsTaskResponse
--
--         , responseCreateStream $
--             createStreamResponse
--
--         , responseRemoveThingFromBillingGroup $
--             removeThingFromBillingGroupResponse
--
--         , responseListAuthorizers $
--             listAuthorizersResponse
--
--         , responseDeleteAuthorizer $
--             deleteAuthorizerResponse
--
--         , responseCreateAuditSuppression $
--             createAuditSuppressionResponse
--
--         , responseCreateProvisioningTemplate $
--             createProvisioningTemplateResponse
--
--         , responseGetTopicRuleDestination $
--             getTopicRuleDestinationResponse
--
--         , responseDescribeAuditTask $
--             describeAuditTaskResponse
--
--         , responseDescribeDomainConfiguration $
--             describeDomainConfigurationResponse
--
--         , responseListStreams $
--             listStreamsResponse
--
--         , responseListAuditSuppressions $
--             listAuditSuppressionsResponse
--
--         , responseCreateCertificateFromCSR $
--             createCertificateFromCSRResponse
--
--         , responseGetOTAUpdate $
--             getOTAUpdateResponse
--
--         , responseGetEffectivePolicies $
--             getEffectivePoliciesResponse
--
--         , responseUpdateScheduledAudit $
--             updateScheduledAuditResponse
--
--         , responseDescribeAuditFinding $
--             describeAuditFindingResponse
--
--         , responseDeleteScheduledAudit $
--             deleteScheduledAuditResponse
--
--         , responseListBillingGroups $
--             listBillingGroupsResponse
--
--         , responseTestAuthorization $
--             testAuthorizationResponse
--
--         , responseListThingTypes $
--             listThingTypesResponse
--
--         , responseListIndices $
--             listIndicesResponse
--
--         , responseDeleteThingType $
--             deleteThingTypeResponse
--
--         , responseRegisterThing $
--             registerThingResponse
--
--         , responseListOutgoingCertificates $
--             listOutgoingCertificatesResponse
--
--         , responseDeleteTopicRuleDestination $
--             deleteTopicRuleDestinationResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseListTopicRuleDestinations $
--             listTopicRuleDestinationsResponse
--
--         , responseCancelDetectMitigationActionsTask $
--             cancelDetectMitigationActionsTaskResponse
--
--         , responseAddThingToBillingGroup $
--             addThingToBillingGroupResponse
--
--         , responseDeleteThingGroup $
--             deleteThingGroupResponse
--
--         , responseDescribeEventConfigurations $
--             describeEventConfigurationsResponse
--
--         , responseUpdateTopicRuleDestination $
--             updateTopicRuleDestinationResponse
--
--         , responseListOTAUpdates $
--             listOTAUpdatesResponse
--
--         , responseListThingGroups $
--             listThingGroupsResponse
--
--         , responseListProvisioningTemplateVersions $
--             listProvisioningTemplateVersionsResponse
--
--         , responseUpdateThingGroup $
--             updateThingGroupResponse
--
--           ]
--     ]

-- Requests

requestListThingRegistrationTaskReports :: ListThingRegistrationTaskReports -> TestTree
requestListThingRegistrationTaskReports =
  req
    "ListThingRegistrationTaskReports"
    "fixture/ListThingRegistrationTaskReports.yaml"

requestCreateProvisioningClaim :: CreateProvisioningClaim -> TestTree
requestCreateProvisioningClaim =
  req
    "CreateProvisioningClaim"
    "fixture/CreateProvisioningClaim.yaml"

requestUpdateIndexingConfiguration :: UpdateIndexingConfiguration -> TestTree
requestUpdateIndexingConfiguration =
  req
    "UpdateIndexingConfiguration"
    "fixture/UpdateIndexingConfiguration.yaml"

requestCreatePolicy :: CreatePolicy -> TestTree
requestCreatePolicy =
  req
    "CreatePolicy"
    "fixture/CreatePolicy.yaml"

requestDeleteCertificate :: DeleteCertificate -> TestTree
requestDeleteCertificate =
  req
    "DeleteCertificate"
    "fixture/DeleteCertificate.yaml"

requestListSecurityProfiles :: ListSecurityProfiles -> TestTree
requestListSecurityProfiles =
  req
    "ListSecurityProfiles"
    "fixture/ListSecurityProfiles.yaml"

requestDeleteJobExecution :: DeleteJobExecution -> TestTree
requestDeleteJobExecution =
  req
    "DeleteJobExecution"
    "fixture/DeleteJobExecution.yaml"

requestListMitigationActions :: ListMitigationActions -> TestTree
requestListMitigationActions =
  req
    "ListMitigationActions"
    "fixture/ListMitigationActions.yaml"

requestStartDetectMitigationActionsTask :: StartDetectMitigationActionsTask -> TestTree
requestStartDetectMitigationActionsTask =
  req
    "StartDetectMitigationActionsTask"
    "fixture/StartDetectMitigationActionsTask.yaml"

requestGetCardinality :: GetCardinality -> TestTree
requestGetCardinality =
  req
    "GetCardinality"
    "fixture/GetCardinality.yaml"

requestListViolationEvents :: ListViolationEvents -> TestTree
requestListViolationEvents =
  req
    "ListViolationEvents"
    "fixture/ListViolationEvents.yaml"

requestUpdateCertificate :: UpdateCertificate -> TestTree
requestUpdateCertificate =
  req
    "UpdateCertificate"
    "fixture/UpdateCertificate.yaml"

requestDeleteMitigationAction :: DeleteMitigationAction -> TestTree
requestDeleteMitigationAction =
  req
    "DeleteMitigationAction"
    "fixture/DeleteMitigationAction.yaml"

requestUpdateMitigationAction :: UpdateMitigationAction -> TestTree
requestUpdateMitigationAction =
  req
    "UpdateMitigationAction"
    "fixture/UpdateMitigationAction.yaml"

requestDescribeProvisioningTemplate :: DescribeProvisioningTemplate -> TestTree
requestDescribeProvisioningTemplate =
  req
    "DescribeProvisioningTemplate"
    "fixture/DescribeProvisioningTemplate.yaml"

requestListPolicies :: ListPolicies -> TestTree
requestListPolicies =
  req
    "ListPolicies"
    "fixture/ListPolicies.yaml"

requestCreateDimension :: CreateDimension -> TestTree
requestCreateDimension =
  req
    "CreateDimension"
    "fixture/CreateDimension.yaml"

requestUpdateDomainConfiguration :: UpdateDomainConfiguration -> TestTree
requestUpdateDomainConfiguration =
  req
    "UpdateDomainConfiguration"
    "fixture/UpdateDomainConfiguration.yaml"

requestCancelJob :: CancelJob -> TestTree
requestCancelJob =
  req
    "CancelJob"
    "fixture/CancelJob.yaml"

requestListAuditTasks :: ListAuditTasks -> TestTree
requestListAuditTasks =
  req
    "ListAuditTasks"
    "fixture/ListAuditTasks.yaml"

requestRejectCertificateTransfer :: RejectCertificateTransfer -> TestTree
requestRejectCertificateTransfer =
  req
    "RejectCertificateTransfer"
    "fixture/RejectCertificateTransfer.yaml"

requestDeletePolicy :: DeletePolicy -> TestTree
requestDeletePolicy =
  req
    "DeletePolicy"
    "fixture/DeletePolicy.yaml"

requestSetLoggingOptions :: SetLoggingOptions -> TestTree
requestSetLoggingOptions =
  req
    "SetLoggingOptions"
    "fixture/SetLoggingOptions.yaml"

requestCreateMitigationAction :: CreateMitigationAction -> TestTree
requestCreateMitigationAction =
  req
    "CreateMitigationAction"
    "fixture/CreateMitigationAction.yaml"

requestGetTopicRule :: GetTopicRule -> TestTree
requestGetTopicRule =
  req
    "GetTopicRule"
    "fixture/GetTopicRule.yaml"

requestDescribeThingType :: DescribeThingType -> TestTree
requestDescribeThingType =
  req
    "DescribeThingType"
    "fixture/DescribeThingType.yaml"

requestListThingsInThingGroup :: ListThingsInThingGroup -> TestTree
requestListThingsInThingGroup =
  req
    "ListThingsInThingGroup"
    "fixture/ListThingsInThingGroup.yaml"

requestDescribeScheduledAudit :: DescribeScheduledAudit -> TestTree
requestDescribeScheduledAudit =
  req
    "DescribeScheduledAudit"
    "fixture/DescribeScheduledAudit.yaml"

requestListDomainConfigurations :: ListDomainConfigurations -> TestTree
requestListDomainConfigurations =
  req
    "ListDomainConfigurations"
    "fixture/ListDomainConfigurations.yaml"

requestDeleteDomainConfiguration :: DeleteDomainConfiguration -> TestTree
requestDeleteDomainConfiguration =
  req
    "DeleteDomainConfiguration"
    "fixture/DeleteDomainConfiguration.yaml"

requestGetV2LoggingOptions :: GetV2LoggingOptions -> TestTree
requestGetV2LoggingOptions =
  req
    "GetV2LoggingOptions"
    "fixture/GetV2LoggingOptions.yaml"

requestCreateSecurityProfile :: CreateSecurityProfile -> TestTree
requestCreateSecurityProfile =
  req
    "CreateSecurityProfile"
    "fixture/CreateSecurityProfile.yaml"

requestDeleteTopicRule :: DeleteTopicRule -> TestTree
requestDeleteTopicRule =
  req
    "DeleteTopicRule"
    "fixture/DeleteTopicRule.yaml"

requestDeleteCACertificate :: DeleteCACertificate -> TestTree
requestDeleteCACertificate =
  req
    "DeleteCACertificate"
    "fixture/DeleteCACertificate.yaml"

requestDeleteCustomMetric :: DeleteCustomMetric -> TestTree
requestDeleteCustomMetric =
  req
    "DeleteCustomMetric"
    "fixture/DeleteCustomMetric.yaml"

requestUpdateCustomMetric :: UpdateCustomMetric -> TestTree
requestUpdateCustomMetric =
  req
    "UpdateCustomMetric"
    "fixture/UpdateCustomMetric.yaml"

requestCancelAuditTask :: CancelAuditTask -> TestTree
requestCancelAuditTask =
  req
    "CancelAuditTask"
    "fixture/CancelAuditTask.yaml"

requestListRoleAliases :: ListRoleAliases -> TestTree
requestListRoleAliases =
  req
    "ListRoleAliases"
    "fixture/ListRoleAliases.yaml"

requestStartAuditMitigationActionsTask :: StartAuditMitigationActionsTask -> TestTree
requestStartAuditMitigationActionsTask =
  req
    "StartAuditMitigationActionsTask"
    "fixture/StartAuditMitigationActionsTask.yaml"

requestAttachSecurityProfile :: AttachSecurityProfile -> TestTree
requestAttachSecurityProfile =
  req
    "AttachSecurityProfile"
    "fixture/AttachSecurityProfile.yaml"

requestDeleteJob :: DeleteJob -> TestTree
requestDeleteJob =
  req
    "DeleteJob"
    "fixture/DeleteJob.yaml"

requestTransferCertificate :: TransferCertificate -> TestTree
requestTransferCertificate =
  req
    "TransferCertificate"
    "fixture/TransferCertificate.yaml"

requestCreateKeysAndCertificate :: CreateKeysAndCertificate -> TestTree
requestCreateKeysAndCertificate =
  req
    "CreateKeysAndCertificate"
    "fixture/CreateKeysAndCertificate.yaml"

requestUpdateCACertificate :: UpdateCACertificate -> TestTree
requestUpdateCACertificate =
  req
    "UpdateCACertificate"
    "fixture/UpdateCACertificate.yaml"

requestUpdateJob :: UpdateJob -> TestTree
requestUpdateJob =
  req
    "UpdateJob"
    "fixture/UpdateJob.yaml"

requestCreateRoleAlias :: CreateRoleAlias -> TestTree
requestCreateRoleAlias =
  req
    "CreateRoleAlias"
    "fixture/CreateRoleAlias.yaml"

requestListThingsInBillingGroup :: ListThingsInBillingGroup -> TestTree
requestListThingsInBillingGroup =
  req
    "ListThingsInBillingGroup"
    "fixture/ListThingsInBillingGroup.yaml"

requestListTargetsForSecurityProfile :: ListTargetsForSecurityProfile -> TestTree
requestListTargetsForSecurityProfile =
  req
    "ListTargetsForSecurityProfile"
    "fixture/ListTargetsForSecurityProfile.yaml"

requestListCustomMetrics :: ListCustomMetrics -> TestTree
requestListCustomMetrics =
  req
    "ListCustomMetrics"
    "fixture/ListCustomMetrics.yaml"

requestDescribeProvisioningTemplateVersion :: DescribeProvisioningTemplateVersion -> TestTree
requestDescribeProvisioningTemplateVersion =
  req
    "DescribeProvisioningTemplateVersion"
    "fixture/DescribeProvisioningTemplateVersion.yaml"

requestGetPercentiles :: GetPercentiles -> TestTree
requestGetPercentiles =
  req
    "GetPercentiles"
    "fixture/GetPercentiles.yaml"

requestCreatePolicyVersion :: CreatePolicyVersion -> TestTree
requestCreatePolicyVersion =
  req
    "CreatePolicyVersion"
    "fixture/CreatePolicyVersion.yaml"

requestDescribeEndpoint :: DescribeEndpoint -> TestTree
requestDescribeEndpoint =
  req
    "DescribeEndpoint"
    "fixture/DescribeEndpoint.yaml"

requestSetDefaultPolicyVersion :: SetDefaultPolicyVersion -> TestTree
requestSetDefaultPolicyVersion =
  req
    "SetDefaultPolicyVersion"
    "fixture/SetDefaultPolicyVersion.yaml"

requestCreateCustomMetric :: CreateCustomMetric -> TestTree
requestCreateCustomMetric =
  req
    "CreateCustomMetric"
    "fixture/CreateCustomMetric.yaml"

requestDisableTopicRule :: DisableTopicRule -> TestTree
requestDisableTopicRule =
  req
    "DisableTopicRule"
    "fixture/DisableTopicRule.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDescribeAuditMitigationActionsTask :: DescribeAuditMitigationActionsTask -> TestTree
requestDescribeAuditMitigationActionsTask =
  req
    "DescribeAuditMitigationActionsTask"
    "fixture/DescribeAuditMitigationActionsTask.yaml"

requestSetV2LoggingLevel :: SetV2LoggingLevel -> TestTree
requestSetV2LoggingLevel =
  req
    "SetV2LoggingLevel"
    "fixture/SetV2LoggingLevel.yaml"

requestListJobExecutionsForThing :: ListJobExecutionsForThing -> TestTree
requestListJobExecutionsForThing =
  req
    "ListJobExecutionsForThing"
    "fixture/ListJobExecutionsForThing.yaml"

requestCreateThing :: CreateThing -> TestTree
requestCreateThing =
  req
    "CreateThing"
    "fixture/CreateThing.yaml"

requestDescribeCertificate :: DescribeCertificate -> TestTree
requestDescribeCertificate =
  req
    "DescribeCertificate"
    "fixture/DescribeCertificate.yaml"

requestUpdateProvisioningTemplate :: UpdateProvisioningTemplate -> TestTree
requestUpdateProvisioningTemplate =
  req
    "UpdateProvisioningTemplate"
    "fixture/UpdateProvisioningTemplate.yaml"

requestStartThingRegistrationTask :: StartThingRegistrationTask -> TestTree
requestStartThingRegistrationTask =
  req
    "StartThingRegistrationTask"
    "fixture/StartThingRegistrationTask.yaml"

requestSetDefaultAuthorizer :: SetDefaultAuthorizer -> TestTree
requestSetDefaultAuthorizer =
  req
    "SetDefaultAuthorizer"
    "fixture/SetDefaultAuthorizer.yaml"

requestDeleteProvisioningTemplate :: DeleteProvisioningTemplate -> TestTree
requestDeleteProvisioningTemplate =
  req
    "DeleteProvisioningTemplate"
    "fixture/DeleteProvisioningTemplate.yaml"

requestDescribeMitigationAction :: DescribeMitigationAction -> TestTree
requestDescribeMitigationAction =
  req
    "DescribeMitigationAction"
    "fixture/DescribeMitigationAction.yaml"

requestDeleteV2LoggingLevel :: DeleteV2LoggingLevel -> TestTree
requestDeleteV2LoggingLevel =
  req
    "DeleteV2LoggingLevel"
    "fixture/DeleteV2LoggingLevel.yaml"

requestDescribeJobExecution :: DescribeJobExecution -> TestTree
requestDescribeJobExecution =
  req
    "DescribeJobExecution"
    "fixture/DescribeJobExecution.yaml"

requestStopThingRegistrationTask :: StopThingRegistrationTask -> TestTree
requestStopThingRegistrationTask =
  req
    "StopThingRegistrationTask"
    "fixture/StopThingRegistrationTask.yaml"

requestCreateScheduledAudit :: CreateScheduledAudit -> TestTree
requestCreateScheduledAudit =
  req
    "CreateScheduledAudit"
    "fixture/CreateScheduledAudit.yaml"

requestGetIndexingConfiguration :: GetIndexingConfiguration -> TestTree
requestGetIndexingConfiguration =
  req
    "GetIndexingConfiguration"
    "fixture/GetIndexingConfiguration.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestListV2LoggingLevels :: ListV2LoggingLevels -> TestTree
requestListV2LoggingLevels =
  req
    "ListV2LoggingLevels"
    "fixture/ListV2LoggingLevels.yaml"

requestListProvisioningTemplates :: ListProvisioningTemplates -> TestTree
requestListProvisioningTemplates =
  req
    "ListProvisioningTemplates"
    "fixture/ListProvisioningTemplates.yaml"

requestListAuditMitigationActionsExecutions :: ListAuditMitigationActionsExecutions -> TestTree
requestListAuditMitigationActionsExecutions =
  req
    "ListAuditMitigationActionsExecutions"
    "fixture/ListAuditMitigationActionsExecutions.yaml"

requestDeleteAuditSuppression :: DeleteAuditSuppression -> TestTree
requestDeleteAuditSuppression =
  req
    "DeleteAuditSuppression"
    "fixture/DeleteAuditSuppression.yaml"

requestListDetectMitigationActionsTasks :: ListDetectMitigationActionsTasks -> TestTree
requestListDetectMitigationActionsTasks =
  req
    "ListDetectMitigationActionsTasks"
    "fixture/ListDetectMitigationActionsTasks.yaml"

requestUpdateStream :: UpdateStream -> TestTree
requestUpdateStream =
  req
    "UpdateStream"
    "fixture/UpdateStream.yaml"

requestDeleteRegistrationCode :: DeleteRegistrationCode -> TestTree
requestDeleteRegistrationCode =
  req
    "DeleteRegistrationCode"
    "fixture/DeleteRegistrationCode.yaml"

requestCreateAuthorizer :: CreateAuthorizer -> TestTree
requestCreateAuthorizer =
  req
    "CreateAuthorizer"
    "fixture/CreateAuthorizer.yaml"

requestDescribeDimension :: DescribeDimension -> TestTree
requestDescribeDimension =
  req
    "DescribeDimension"
    "fixture/DescribeDimension.yaml"

requestDeleteStream :: DeleteStream -> TestTree
requestDeleteStream =
  req
    "DeleteStream"
    "fixture/DeleteStream.yaml"

requestDeleteAccountAuditConfiguration :: DeleteAccountAuditConfiguration -> TestTree
requestDeleteAccountAuditConfiguration =
  req
    "DeleteAccountAuditConfiguration"
    "fixture/DeleteAccountAuditConfiguration.yaml"

requestListThings :: ListThings -> TestTree
requestListThings =
  req
    "ListThings"
    "fixture/ListThings.yaml"

requestSetV2LoggingOptions :: SetV2LoggingOptions -> TestTree
requestSetV2LoggingOptions =
  req
    "SetV2LoggingOptions"
    "fixture/SetV2LoggingOptions.yaml"

requestUpdateThing :: UpdateThing -> TestTree
requestUpdateThing =
  req
    "UpdateThing"
    "fixture/UpdateThing.yaml"

requestAddThingToThingGroup :: AddThingToThingGroup -> TestTree
requestAddThingToThingGroup =
  req
    "AddThingToThingGroup"
    "fixture/AddThingToThingGroup.yaml"

requestGetLoggingOptions :: GetLoggingOptions -> TestTree
requestGetLoggingOptions =
  req
    "GetLoggingOptions"
    "fixture/GetLoggingOptions.yaml"

requestUpdateAuditSuppression :: UpdateAuditSuppression -> TestTree
requestUpdateAuditSuppression =
  req
    "UpdateAuditSuppression"
    "fixture/UpdateAuditSuppression.yaml"

requestListScheduledAudits :: ListScheduledAudits -> TestTree
requestListScheduledAudits =
  req
    "ListScheduledAudits"
    "fixture/ListScheduledAudits.yaml"

requestAttachThingPrincipal :: AttachThingPrincipal -> TestTree
requestAttachThingPrincipal =
  req
    "AttachThingPrincipal"
    "fixture/AttachThingPrincipal.yaml"

requestDeleteThing :: DeleteThing -> TestTree
requestDeleteThing =
  req
    "DeleteThing"
    "fixture/DeleteThing.yaml"

requestListCertificatesByCA :: ListCertificatesByCA -> TestTree
requestListCertificatesByCA =
  req
    "ListCertificatesByCA"
    "fixture/ListCertificatesByCA.yaml"

requestListThingGroupsForThing :: ListThingGroupsForThing -> TestTree
requestListThingGroupsForThing =
  req
    "ListThingGroupsForThing"
    "fixture/ListThingGroupsForThing.yaml"

requestUpdateBillingGroup :: UpdateBillingGroup -> TestTree
requestUpdateBillingGroup =
  req
    "UpdateBillingGroup"
    "fixture/UpdateBillingGroup.yaml"

requestDeleteBillingGroup :: DeleteBillingGroup -> TestTree
requestDeleteBillingGroup =
  req
    "DeleteBillingGroup"
    "fixture/DeleteBillingGroup.yaml"

requestUpdateAccountAuditConfiguration :: UpdateAccountAuditConfiguration -> TestTree
requestUpdateAccountAuditConfiguration =
  req
    "UpdateAccountAuditConfiguration"
    "fixture/UpdateAccountAuditConfiguration.yaml"

requestDescribeThingRegistrationTask :: DescribeThingRegistrationTask -> TestTree
requestDescribeThingRegistrationTask =
  req
    "DescribeThingRegistrationTask"
    "fixture/DescribeThingRegistrationTask.yaml"

requestDescribeCustomMetric :: DescribeCustomMetric -> TestTree
requestDescribeCustomMetric =
  req
    "DescribeCustomMetric"
    "fixture/DescribeCustomMetric.yaml"

requestDescribeCACertificate :: DescribeCACertificate -> TestTree
requestDescribeCACertificate =
  req
    "DescribeCACertificate"
    "fixture/DescribeCACertificate.yaml"

requestDeleteProvisioningTemplateVersion :: DeleteProvisioningTemplateVersion -> TestTree
requestDeleteProvisioningTemplateVersion =
  req
    "DeleteProvisioningTemplateVersion"
    "fixture/DeleteProvisioningTemplateVersion.yaml"

requestDeleteOTAUpdate :: DeleteOTAUpdate -> TestTree
requestDeleteOTAUpdate =
  req
    "DeleteOTAUpdate"
    "fixture/DeleteOTAUpdate.yaml"

requestRegisterCertificateWithoutCA :: RegisterCertificateWithoutCA -> TestTree
requestRegisterCertificateWithoutCA =
  req
    "RegisterCertificateWithoutCA"
    "fixture/RegisterCertificateWithoutCA.yaml"

requestListDetectMitigationActionsExecutions :: ListDetectMitigationActionsExecutions -> TestTree
requestListDetectMitigationActionsExecutions =
  req
    "ListDetectMitigationActionsExecutions"
    "fixture/ListDetectMitigationActionsExecutions.yaml"

requestCreateDynamicThingGroup :: CreateDynamicThingGroup -> TestTree
requestCreateDynamicThingGroup =
  req
    "CreateDynamicThingGroup"
    "fixture/CreateDynamicThingGroup.yaml"

requestGetRegistrationCode :: GetRegistrationCode -> TestTree
requestGetRegistrationCode =
  req
    "GetRegistrationCode"
    "fixture/GetRegistrationCode.yaml"

requestDescribeJob :: DescribeJob -> TestTree
requestDescribeJob =
  req
    "DescribeJob"
    "fixture/DescribeJob.yaml"

requestDetachSecurityProfile :: DetachSecurityProfile -> TestTree
requestDetachSecurityProfile =
  req
    "DetachSecurityProfile"
    "fixture/DetachSecurityProfile.yaml"

requestTestInvokeAuthorizer :: TestInvokeAuthorizer -> TestTree
requestTestInvokeAuthorizer =
  req
    "TestInvokeAuthorizer"
    "fixture/TestInvokeAuthorizer.yaml"

requestRemoveThingFromThingGroup :: RemoveThingFromThingGroup -> TestTree
requestRemoveThingFromThingGroup =
  req
    "RemoveThingFromThingGroup"
    "fixture/RemoveThingFromThingGroup.yaml"

requestGetBehaviorModelTrainingSummaries :: GetBehaviorModelTrainingSummaries -> TestTree
requestGetBehaviorModelTrainingSummaries =
  req
    "GetBehaviorModelTrainingSummaries"
    "fixture/GetBehaviorModelTrainingSummaries.yaml"

requestCreateProvisioningTemplateVersion :: CreateProvisioningTemplateVersion -> TestTree
requestCreateProvisioningTemplateVersion =
  req
    "CreateProvisioningTemplateVersion"
    "fixture/CreateProvisioningTemplateVersion.yaml"

requestListPrincipalThings :: ListPrincipalThings -> TestTree
requestListPrincipalThings =
  req
    "ListPrincipalThings"
    "fixture/ListPrincipalThings.yaml"

requestListAuditMitigationActionsTasks :: ListAuditMitigationActionsTasks -> TestTree
requestListAuditMitigationActionsTasks =
  req
    "ListAuditMitigationActionsTasks"
    "fixture/ListAuditMitigationActionsTasks.yaml"

requestDescribeRoleAlias :: DescribeRoleAlias -> TestTree
requestDescribeRoleAlias =
  req
    "DescribeRoleAlias"
    "fixture/DescribeRoleAlias.yaml"

requestCreateTopicRuleDestination :: CreateTopicRuleDestination -> TestTree
requestCreateTopicRuleDestination =
  req
    "CreateTopicRuleDestination"
    "fixture/CreateTopicRuleDestination.yaml"

requestCreateOTAUpdate :: CreateOTAUpdate -> TestTree
requestCreateOTAUpdate =
  req
    "CreateOTAUpdate"
    "fixture/CreateOTAUpdate.yaml"

requestDeleteDynamicThingGroup :: DeleteDynamicThingGroup -> TestTree
requestDeleteDynamicThingGroup =
  req
    "DeleteDynamicThingGroup"
    "fixture/DeleteDynamicThingGroup.yaml"

requestUpdateDynamicThingGroup :: UpdateDynamicThingGroup -> TestTree
requestUpdateDynamicThingGroup =
  req
    "UpdateDynamicThingGroup"
    "fixture/UpdateDynamicThingGroup.yaml"

requestDetachPolicy :: DetachPolicy -> TestTree
requestDetachPolicy =
  req
    "DetachPolicy"
    "fixture/DetachPolicy.yaml"

requestListThingPrincipals :: ListThingPrincipals -> TestTree
requestListThingPrincipals =
  req
    "ListThingPrincipals"
    "fixture/ListThingPrincipals.yaml"

requestDescribeDefaultAuthorizer :: DescribeDefaultAuthorizer -> TestTree
requestDescribeDefaultAuthorizer =
  req
    "DescribeDefaultAuthorizer"
    "fixture/DescribeDefaultAuthorizer.yaml"

requestCreateThingGroup :: CreateThingGroup -> TestTree
requestCreateThingGroup =
  req
    "CreateThingGroup"
    "fixture/CreateThingGroup.yaml"

requestRegisterCertificate :: RegisterCertificate -> TestTree
requestRegisterCertificate =
  req
    "RegisterCertificate"
    "fixture/RegisterCertificate.yaml"

requestDeleteSecurityProfile :: DeleteSecurityProfile -> TestTree
requestDeleteSecurityProfile =
  req
    "DeleteSecurityProfile"
    "fixture/DeleteSecurityProfile.yaml"

requestValidateSecurityProfileBehaviors :: ValidateSecurityProfileBehaviors -> TestTree
requestValidateSecurityProfileBehaviors =
  req
    "ValidateSecurityProfileBehaviors"
    "fixture/ValidateSecurityProfileBehaviors.yaml"

requestCreateDomainConfiguration :: CreateDomainConfiguration -> TestTree
requestCreateDomainConfiguration =
  req
    "CreateDomainConfiguration"
    "fixture/CreateDomainConfiguration.yaml"

requestGetPolicyVersion :: GetPolicyVersion -> TestTree
requestGetPolicyVersion =
  req
    "GetPolicyVersion"
    "fixture/GetPolicyVersion.yaml"

requestListCertificates :: ListCertificates -> TestTree
requestListCertificates =
  req
    "ListCertificates"
    "fixture/ListCertificates.yaml"

requestUpdateSecurityProfile :: UpdateSecurityProfile -> TestTree
requestUpdateSecurityProfile =
  req
    "UpdateSecurityProfile"
    "fixture/UpdateSecurityProfile.yaml"

requestListActiveViolations :: ListActiveViolations -> TestTree
requestListActiveViolations =
  req
    "ListActiveViolations"
    "fixture/ListActiveViolations.yaml"

requestDescribeAuthorizer :: DescribeAuthorizer -> TestTree
requestDescribeAuthorizer =
  req
    "DescribeAuthorizer"
    "fixture/DescribeAuthorizer.yaml"

requestDescribeAccountAuditConfiguration :: DescribeAccountAuditConfiguration -> TestTree
requestDescribeAccountAuditConfiguration =
  req
    "DescribeAccountAuditConfiguration"
    "fixture/DescribeAccountAuditConfiguration.yaml"

requestDeprecateThingType :: DeprecateThingType -> TestTree
requestDeprecateThingType =
  req
    "DeprecateThingType"
    "fixture/DeprecateThingType.yaml"

requestDeleteDimension :: DeleteDimension -> TestTree
requestDeleteDimension =
  req
    "DeleteDimension"
    "fixture/DeleteDimension.yaml"

requestDescribeBillingGroup :: DescribeBillingGroup -> TestTree
requestDescribeBillingGroup =
  req
    "DescribeBillingGroup"
    "fixture/DescribeBillingGroup.yaml"

requestUpdateDimension :: UpdateDimension -> TestTree
requestUpdateDimension =
  req
    "UpdateDimension"
    "fixture/UpdateDimension.yaml"

requestConfirmTopicRuleDestination :: ConfirmTopicRuleDestination -> TestTree
requestConfirmTopicRuleDestination =
  req
    "ConfirmTopicRuleDestination"
    "fixture/ConfirmTopicRuleDestination.yaml"

requestDescribeDetectMitigationActionsTask :: DescribeDetectMitigationActionsTask -> TestTree
requestDescribeDetectMitigationActionsTask =
  req
    "DescribeDetectMitigationActionsTask"
    "fixture/DescribeDetectMitigationActionsTask.yaml"

requestListThingRegistrationTasks :: ListThingRegistrationTasks -> TestTree
requestListThingRegistrationTasks =
  req
    "ListThingRegistrationTasks"
    "fixture/ListThingRegistrationTasks.yaml"

requestListDimensions :: ListDimensions -> TestTree
requestListDimensions =
  req
    "ListDimensions"
    "fixture/ListDimensions.yaml"

requestDescribeAuditSuppression :: DescribeAuditSuppression -> TestTree
requestDescribeAuditSuppression =
  req
    "DescribeAuditSuppression"
    "fixture/DescribeAuditSuppression.yaml"

requestListAuditFindings :: ListAuditFindings -> TestTree
requestListAuditFindings =
  req
    "ListAuditFindings"
    "fixture/ListAuditFindings.yaml"

requestDescribeThing :: DescribeThing -> TestTree
requestDescribeThing =
  req
    "DescribeThing"
    "fixture/DescribeThing.yaml"

requestDescribeStream :: DescribeStream -> TestTree
requestDescribeStream =
  req
    "DescribeStream"
    "fixture/DescribeStream.yaml"

requestDetachThingPrincipal :: DetachThingPrincipal -> TestTree
requestDetachThingPrincipal =
  req
    "DetachThingPrincipal"
    "fixture/DetachThingPrincipal.yaml"

requestStartOnDemandAuditTask :: StartOnDemandAuditTask -> TestTree
requestStartOnDemandAuditTask =
  req
    "StartOnDemandAuditTask"
    "fixture/StartOnDemandAuditTask.yaml"

requestListAttachedPolicies :: ListAttachedPolicies -> TestTree
requestListAttachedPolicies =
  req
    "ListAttachedPolicies"
    "fixture/ListAttachedPolicies.yaml"

requestGetPolicy :: GetPolicy -> TestTree
requestGetPolicy =
  req
    "GetPolicy"
    "fixture/GetPolicy.yaml"

requestListCACertificates :: ListCACertificates -> TestTree
requestListCACertificates =
  req
    "ListCACertificates"
    "fixture/ListCACertificates.yaml"

requestEnableTopicRule :: EnableTopicRule -> TestTree
requestEnableTopicRule =
  req
    "EnableTopicRule"
    "fixture/EnableTopicRule.yaml"

requestListJobs :: ListJobs -> TestTree
requestListJobs =
  req
    "ListJobs"
    "fixture/ListJobs.yaml"

requestRegisterCACertificate :: RegisterCACertificate -> TestTree
requestRegisterCACertificate =
  req
    "RegisterCACertificate"
    "fixture/RegisterCACertificate.yaml"

requestListSecurityProfilesForTarget :: ListSecurityProfilesForTarget -> TestTree
requestListSecurityProfilesForTarget =
  req
    "ListSecurityProfilesForTarget"
    "fixture/ListSecurityProfilesForTarget.yaml"

requestUpdateEventConfigurations :: UpdateEventConfigurations -> TestTree
requestUpdateEventConfigurations =
  req
    "UpdateEventConfigurations"
    "fixture/UpdateEventConfigurations.yaml"

requestGetJobDocument :: GetJobDocument -> TestTree
requestGetJobDocument =
  req
    "GetJobDocument"
    "fixture/GetJobDocument.yaml"

requestListTopicRules :: ListTopicRules -> TestTree
requestListTopicRules =
  req
    "ListTopicRules"
    "fixture/ListTopicRules.yaml"

requestDescribeThingGroup :: DescribeThingGroup -> TestTree
requestDescribeThingGroup =
  req
    "DescribeThingGroup"
    "fixture/DescribeThingGroup.yaml"

requestAcceptCertificateTransfer :: AcceptCertificateTransfer -> TestTree
requestAcceptCertificateTransfer =
  req
    "AcceptCertificateTransfer"
    "fixture/AcceptCertificateTransfer.yaml"

requestUpdateThingGroupsForThing :: UpdateThingGroupsForThing -> TestTree
requestUpdateThingGroupsForThing =
  req
    "UpdateThingGroupsForThing"
    "fixture/UpdateThingGroupsForThing.yaml"

requestListTargetsForPolicy :: ListTargetsForPolicy -> TestTree
requestListTargetsForPolicy =
  req
    "ListTargetsForPolicy"
    "fixture/ListTargetsForPolicy.yaml"

requestReplaceTopicRule :: ReplaceTopicRule -> TestTree
requestReplaceTopicRule =
  req
    "ReplaceTopicRule"
    "fixture/ReplaceTopicRule.yaml"

requestDescribeIndex :: DescribeIndex -> TestTree
requestDescribeIndex =
  req
    "DescribeIndex"
    "fixture/DescribeIndex.yaml"

requestDeletePolicyVersion :: DeletePolicyVersion -> TestTree
requestDeletePolicyVersion =
  req
    "DeletePolicyVersion"
    "fixture/DeletePolicyVersion.yaml"

requestAttachPolicy :: AttachPolicy -> TestTree
requestAttachPolicy =
  req
    "AttachPolicy"
    "fixture/AttachPolicy.yaml"

requestClearDefaultAuthorizer :: ClearDefaultAuthorizer -> TestTree
requestClearDefaultAuthorizer =
  req
    "ClearDefaultAuthorizer"
    "fixture/ClearDefaultAuthorizer.yaml"

requestCreateTopicRule :: CreateTopicRule -> TestTree
requestCreateTopicRule =
  req
    "CreateTopicRule"
    "fixture/CreateTopicRule.yaml"

requestCreateJob :: CreateJob -> TestTree
requestCreateJob =
  req
    "CreateJob"
    "fixture/CreateJob.yaml"

requestUpdateRoleAlias :: UpdateRoleAlias -> TestTree
requestUpdateRoleAlias =
  req
    "UpdateRoleAlias"
    "fixture/UpdateRoleAlias.yaml"

requestDeleteRoleAlias :: DeleteRoleAlias -> TestTree
requestDeleteRoleAlias =
  req
    "DeleteRoleAlias"
    "fixture/DeleteRoleAlias.yaml"

requestGetStatistics :: GetStatistics -> TestTree
requestGetStatistics =
  req
    "GetStatistics"
    "fixture/GetStatistics.yaml"

requestAssociateTargetsWithJob :: AssociateTargetsWithJob -> TestTree
requestAssociateTargetsWithJob =
  req
    "AssociateTargetsWithJob"
    "fixture/AssociateTargetsWithJob.yaml"

requestListPolicyVersions :: ListPolicyVersions -> TestTree
requestListPolicyVersions =
  req
    "ListPolicyVersions"
    "fixture/ListPolicyVersions.yaml"

requestCancelJobExecution :: CancelJobExecution -> TestTree
requestCancelJobExecution =
  req
    "CancelJobExecution"
    "fixture/CancelJobExecution.yaml"

requestCancelCertificateTransfer :: CancelCertificateTransfer -> TestTree
requestCancelCertificateTransfer =
  req
    "CancelCertificateTransfer"
    "fixture/CancelCertificateTransfer.yaml"

requestCreateThingType :: CreateThingType -> TestTree
requestCreateThingType =
  req
    "CreateThingType"
    "fixture/CreateThingType.yaml"

requestUpdateAuthorizer :: UpdateAuthorizer -> TestTree
requestUpdateAuthorizer =
  req
    "UpdateAuthorizer"
    "fixture/UpdateAuthorizer.yaml"

requestSearchIndex :: SearchIndex -> TestTree
requestSearchIndex =
  req
    "SearchIndex"
    "fixture/SearchIndex.yaml"

requestDescribeSecurityProfile :: DescribeSecurityProfile -> TestTree
requestDescribeSecurityProfile =
  req
    "DescribeSecurityProfile"
    "fixture/DescribeSecurityProfile.yaml"

requestListJobExecutionsForJob :: ListJobExecutionsForJob -> TestTree
requestListJobExecutionsForJob =
  req
    "ListJobExecutionsForJob"
    "fixture/ListJobExecutionsForJob.yaml"

requestCreateBillingGroup :: CreateBillingGroup -> TestTree
requestCreateBillingGroup =
  req
    "CreateBillingGroup"
    "fixture/CreateBillingGroup.yaml"

requestCancelAuditMitigationActionsTask :: CancelAuditMitigationActionsTask -> TestTree
requestCancelAuditMitigationActionsTask =
  req
    "CancelAuditMitigationActionsTask"
    "fixture/CancelAuditMitigationActionsTask.yaml"

requestCreateStream :: CreateStream -> TestTree
requestCreateStream =
  req
    "CreateStream"
    "fixture/CreateStream.yaml"

requestRemoveThingFromBillingGroup :: RemoveThingFromBillingGroup -> TestTree
requestRemoveThingFromBillingGroup =
  req
    "RemoveThingFromBillingGroup"
    "fixture/RemoveThingFromBillingGroup.yaml"

requestListAuthorizers :: ListAuthorizers -> TestTree
requestListAuthorizers =
  req
    "ListAuthorizers"
    "fixture/ListAuthorizers.yaml"

requestDeleteAuthorizer :: DeleteAuthorizer -> TestTree
requestDeleteAuthorizer =
  req
    "DeleteAuthorizer"
    "fixture/DeleteAuthorizer.yaml"

requestCreateAuditSuppression :: CreateAuditSuppression -> TestTree
requestCreateAuditSuppression =
  req
    "CreateAuditSuppression"
    "fixture/CreateAuditSuppression.yaml"

requestCreateProvisioningTemplate :: CreateProvisioningTemplate -> TestTree
requestCreateProvisioningTemplate =
  req
    "CreateProvisioningTemplate"
    "fixture/CreateProvisioningTemplate.yaml"

requestGetTopicRuleDestination :: GetTopicRuleDestination -> TestTree
requestGetTopicRuleDestination =
  req
    "GetTopicRuleDestination"
    "fixture/GetTopicRuleDestination.yaml"

requestDescribeAuditTask :: DescribeAuditTask -> TestTree
requestDescribeAuditTask =
  req
    "DescribeAuditTask"
    "fixture/DescribeAuditTask.yaml"

requestDescribeDomainConfiguration :: DescribeDomainConfiguration -> TestTree
requestDescribeDomainConfiguration =
  req
    "DescribeDomainConfiguration"
    "fixture/DescribeDomainConfiguration.yaml"

requestListStreams :: ListStreams -> TestTree
requestListStreams =
  req
    "ListStreams"
    "fixture/ListStreams.yaml"

requestListAuditSuppressions :: ListAuditSuppressions -> TestTree
requestListAuditSuppressions =
  req
    "ListAuditSuppressions"
    "fixture/ListAuditSuppressions.yaml"

requestCreateCertificateFromCSR :: CreateCertificateFromCSR -> TestTree
requestCreateCertificateFromCSR =
  req
    "CreateCertificateFromCSR"
    "fixture/CreateCertificateFromCSR.yaml"

requestGetOTAUpdate :: GetOTAUpdate -> TestTree
requestGetOTAUpdate =
  req
    "GetOTAUpdate"
    "fixture/GetOTAUpdate.yaml"

requestGetEffectivePolicies :: GetEffectivePolicies -> TestTree
requestGetEffectivePolicies =
  req
    "GetEffectivePolicies"
    "fixture/GetEffectivePolicies.yaml"

requestUpdateScheduledAudit :: UpdateScheduledAudit -> TestTree
requestUpdateScheduledAudit =
  req
    "UpdateScheduledAudit"
    "fixture/UpdateScheduledAudit.yaml"

requestDescribeAuditFinding :: DescribeAuditFinding -> TestTree
requestDescribeAuditFinding =
  req
    "DescribeAuditFinding"
    "fixture/DescribeAuditFinding.yaml"

requestDeleteScheduledAudit :: DeleteScheduledAudit -> TestTree
requestDeleteScheduledAudit =
  req
    "DeleteScheduledAudit"
    "fixture/DeleteScheduledAudit.yaml"

requestListBillingGroups :: ListBillingGroups -> TestTree
requestListBillingGroups =
  req
    "ListBillingGroups"
    "fixture/ListBillingGroups.yaml"

requestTestAuthorization :: TestAuthorization -> TestTree
requestTestAuthorization =
  req
    "TestAuthorization"
    "fixture/TestAuthorization.yaml"

requestListThingTypes :: ListThingTypes -> TestTree
requestListThingTypes =
  req
    "ListThingTypes"
    "fixture/ListThingTypes.yaml"

requestListIndices :: ListIndices -> TestTree
requestListIndices =
  req
    "ListIndices"
    "fixture/ListIndices.yaml"

requestDeleteThingType :: DeleteThingType -> TestTree
requestDeleteThingType =
  req
    "DeleteThingType"
    "fixture/DeleteThingType.yaml"

requestRegisterThing :: RegisterThing -> TestTree
requestRegisterThing =
  req
    "RegisterThing"
    "fixture/RegisterThing.yaml"

requestListOutgoingCertificates :: ListOutgoingCertificates -> TestTree
requestListOutgoingCertificates =
  req
    "ListOutgoingCertificates"
    "fixture/ListOutgoingCertificates.yaml"

requestDeleteTopicRuleDestination :: DeleteTopicRuleDestination -> TestTree
requestDeleteTopicRuleDestination =
  req
    "DeleteTopicRuleDestination"
    "fixture/DeleteTopicRuleDestination.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestListTopicRuleDestinations :: ListTopicRuleDestinations -> TestTree
requestListTopicRuleDestinations =
  req
    "ListTopicRuleDestinations"
    "fixture/ListTopicRuleDestinations.yaml"

requestCancelDetectMitigationActionsTask :: CancelDetectMitigationActionsTask -> TestTree
requestCancelDetectMitigationActionsTask =
  req
    "CancelDetectMitigationActionsTask"
    "fixture/CancelDetectMitigationActionsTask.yaml"

requestAddThingToBillingGroup :: AddThingToBillingGroup -> TestTree
requestAddThingToBillingGroup =
  req
    "AddThingToBillingGroup"
    "fixture/AddThingToBillingGroup.yaml"

requestDeleteThingGroup :: DeleteThingGroup -> TestTree
requestDeleteThingGroup =
  req
    "DeleteThingGroup"
    "fixture/DeleteThingGroup.yaml"

requestDescribeEventConfigurations :: DescribeEventConfigurations -> TestTree
requestDescribeEventConfigurations =
  req
    "DescribeEventConfigurations"
    "fixture/DescribeEventConfigurations.yaml"

requestUpdateTopicRuleDestination :: UpdateTopicRuleDestination -> TestTree
requestUpdateTopicRuleDestination =
  req
    "UpdateTopicRuleDestination"
    "fixture/UpdateTopicRuleDestination.yaml"

requestListOTAUpdates :: ListOTAUpdates -> TestTree
requestListOTAUpdates =
  req
    "ListOTAUpdates"
    "fixture/ListOTAUpdates.yaml"

requestListThingGroups :: ListThingGroups -> TestTree
requestListThingGroups =
  req
    "ListThingGroups"
    "fixture/ListThingGroups.yaml"

requestListProvisioningTemplateVersions :: ListProvisioningTemplateVersions -> TestTree
requestListProvisioningTemplateVersions =
  req
    "ListProvisioningTemplateVersions"
    "fixture/ListProvisioningTemplateVersions.yaml"

requestUpdateThingGroup :: UpdateThingGroup -> TestTree
requestUpdateThingGroup =
  req
    "UpdateThingGroup"
    "fixture/UpdateThingGroup.yaml"

-- Responses

responseListThingRegistrationTaskReports :: ListThingRegistrationTaskReportsResponse -> TestTree
responseListThingRegistrationTaskReports =
  res
    "ListThingRegistrationTaskReportsResponse"
    "fixture/ListThingRegistrationTaskReportsResponse.proto"
    ioT
    (Proxy :: Proxy ListThingRegistrationTaskReports)

responseCreateProvisioningClaim :: CreateProvisioningClaimResponse -> TestTree
responseCreateProvisioningClaim =
  res
    "CreateProvisioningClaimResponse"
    "fixture/CreateProvisioningClaimResponse.proto"
    ioT
    (Proxy :: Proxy CreateProvisioningClaim)

responseUpdateIndexingConfiguration :: UpdateIndexingConfigurationResponse -> TestTree
responseUpdateIndexingConfiguration =
  res
    "UpdateIndexingConfigurationResponse"
    "fixture/UpdateIndexingConfigurationResponse.proto"
    ioT
    (Proxy :: Proxy UpdateIndexingConfiguration)

responseCreatePolicy :: CreatePolicyResponse -> TestTree
responseCreatePolicy =
  res
    "CreatePolicyResponse"
    "fixture/CreatePolicyResponse.proto"
    ioT
    (Proxy :: Proxy CreatePolicy)

responseDeleteCertificate :: DeleteCertificateResponse -> TestTree
responseDeleteCertificate =
  res
    "DeleteCertificateResponse"
    "fixture/DeleteCertificateResponse.proto"
    ioT
    (Proxy :: Proxy DeleteCertificate)

responseListSecurityProfiles :: ListSecurityProfilesResponse -> TestTree
responseListSecurityProfiles =
  res
    "ListSecurityProfilesResponse"
    "fixture/ListSecurityProfilesResponse.proto"
    ioT
    (Proxy :: Proxy ListSecurityProfiles)

responseDeleteJobExecution :: DeleteJobExecutionResponse -> TestTree
responseDeleteJobExecution =
  res
    "DeleteJobExecutionResponse"
    "fixture/DeleteJobExecutionResponse.proto"
    ioT
    (Proxy :: Proxy DeleteJobExecution)

responseListMitigationActions :: ListMitigationActionsResponse -> TestTree
responseListMitigationActions =
  res
    "ListMitigationActionsResponse"
    "fixture/ListMitigationActionsResponse.proto"
    ioT
    (Proxy :: Proxy ListMitigationActions)

responseStartDetectMitigationActionsTask :: StartDetectMitigationActionsTaskResponse -> TestTree
responseStartDetectMitigationActionsTask =
  res
    "StartDetectMitigationActionsTaskResponse"
    "fixture/StartDetectMitigationActionsTaskResponse.proto"
    ioT
    (Proxy :: Proxy StartDetectMitigationActionsTask)

responseGetCardinality :: GetCardinalityResponse -> TestTree
responseGetCardinality =
  res
    "GetCardinalityResponse"
    "fixture/GetCardinalityResponse.proto"
    ioT
    (Proxy :: Proxy GetCardinality)

responseListViolationEvents :: ListViolationEventsResponse -> TestTree
responseListViolationEvents =
  res
    "ListViolationEventsResponse"
    "fixture/ListViolationEventsResponse.proto"
    ioT
    (Proxy :: Proxy ListViolationEvents)

responseUpdateCertificate :: UpdateCertificateResponse -> TestTree
responseUpdateCertificate =
  res
    "UpdateCertificateResponse"
    "fixture/UpdateCertificateResponse.proto"
    ioT
    (Proxy :: Proxy UpdateCertificate)

responseDeleteMitigationAction :: DeleteMitigationActionResponse -> TestTree
responseDeleteMitigationAction =
  res
    "DeleteMitigationActionResponse"
    "fixture/DeleteMitigationActionResponse.proto"
    ioT
    (Proxy :: Proxy DeleteMitigationAction)

responseUpdateMitigationAction :: UpdateMitigationActionResponse -> TestTree
responseUpdateMitigationAction =
  res
    "UpdateMitigationActionResponse"
    "fixture/UpdateMitigationActionResponse.proto"
    ioT
    (Proxy :: Proxy UpdateMitigationAction)

responseDescribeProvisioningTemplate :: DescribeProvisioningTemplateResponse -> TestTree
responseDescribeProvisioningTemplate =
  res
    "DescribeProvisioningTemplateResponse"
    "fixture/DescribeProvisioningTemplateResponse.proto"
    ioT
    (Proxy :: Proxy DescribeProvisioningTemplate)

responseListPolicies :: ListPoliciesResponse -> TestTree
responseListPolicies =
  res
    "ListPoliciesResponse"
    "fixture/ListPoliciesResponse.proto"
    ioT
    (Proxy :: Proxy ListPolicies)

responseCreateDimension :: CreateDimensionResponse -> TestTree
responseCreateDimension =
  res
    "CreateDimensionResponse"
    "fixture/CreateDimensionResponse.proto"
    ioT
    (Proxy :: Proxy CreateDimension)

responseUpdateDomainConfiguration :: UpdateDomainConfigurationResponse -> TestTree
responseUpdateDomainConfiguration =
  res
    "UpdateDomainConfigurationResponse"
    "fixture/UpdateDomainConfigurationResponse.proto"
    ioT
    (Proxy :: Proxy UpdateDomainConfiguration)

responseCancelJob :: CancelJobResponse -> TestTree
responseCancelJob =
  res
    "CancelJobResponse"
    "fixture/CancelJobResponse.proto"
    ioT
    (Proxy :: Proxy CancelJob)

responseListAuditTasks :: ListAuditTasksResponse -> TestTree
responseListAuditTasks =
  res
    "ListAuditTasksResponse"
    "fixture/ListAuditTasksResponse.proto"
    ioT
    (Proxy :: Proxy ListAuditTasks)

responseRejectCertificateTransfer :: RejectCertificateTransferResponse -> TestTree
responseRejectCertificateTransfer =
  res
    "RejectCertificateTransferResponse"
    "fixture/RejectCertificateTransferResponse.proto"
    ioT
    (Proxy :: Proxy RejectCertificateTransfer)

responseDeletePolicy :: DeletePolicyResponse -> TestTree
responseDeletePolicy =
  res
    "DeletePolicyResponse"
    "fixture/DeletePolicyResponse.proto"
    ioT
    (Proxy :: Proxy DeletePolicy)

responseSetLoggingOptions :: SetLoggingOptionsResponse -> TestTree
responseSetLoggingOptions =
  res
    "SetLoggingOptionsResponse"
    "fixture/SetLoggingOptionsResponse.proto"
    ioT
    (Proxy :: Proxy SetLoggingOptions)

responseCreateMitigationAction :: CreateMitigationActionResponse -> TestTree
responseCreateMitigationAction =
  res
    "CreateMitigationActionResponse"
    "fixture/CreateMitigationActionResponse.proto"
    ioT
    (Proxy :: Proxy CreateMitigationAction)

responseGetTopicRule :: GetTopicRuleResponse -> TestTree
responseGetTopicRule =
  res
    "GetTopicRuleResponse"
    "fixture/GetTopicRuleResponse.proto"
    ioT
    (Proxy :: Proxy GetTopicRule)

responseDescribeThingType :: DescribeThingTypeResponse -> TestTree
responseDescribeThingType =
  res
    "DescribeThingTypeResponse"
    "fixture/DescribeThingTypeResponse.proto"
    ioT
    (Proxy :: Proxy DescribeThingType)

responseListThingsInThingGroup :: ListThingsInThingGroupResponse -> TestTree
responseListThingsInThingGroup =
  res
    "ListThingsInThingGroupResponse"
    "fixture/ListThingsInThingGroupResponse.proto"
    ioT
    (Proxy :: Proxy ListThingsInThingGroup)

responseDescribeScheduledAudit :: DescribeScheduledAuditResponse -> TestTree
responseDescribeScheduledAudit =
  res
    "DescribeScheduledAuditResponse"
    "fixture/DescribeScheduledAuditResponse.proto"
    ioT
    (Proxy :: Proxy DescribeScheduledAudit)

responseListDomainConfigurations :: ListDomainConfigurationsResponse -> TestTree
responseListDomainConfigurations =
  res
    "ListDomainConfigurationsResponse"
    "fixture/ListDomainConfigurationsResponse.proto"
    ioT
    (Proxy :: Proxy ListDomainConfigurations)

responseDeleteDomainConfiguration :: DeleteDomainConfigurationResponse -> TestTree
responseDeleteDomainConfiguration =
  res
    "DeleteDomainConfigurationResponse"
    "fixture/DeleteDomainConfigurationResponse.proto"
    ioT
    (Proxy :: Proxy DeleteDomainConfiguration)

responseGetV2LoggingOptions :: GetV2LoggingOptionsResponse -> TestTree
responseGetV2LoggingOptions =
  res
    "GetV2LoggingOptionsResponse"
    "fixture/GetV2LoggingOptionsResponse.proto"
    ioT
    (Proxy :: Proxy GetV2LoggingOptions)

responseCreateSecurityProfile :: CreateSecurityProfileResponse -> TestTree
responseCreateSecurityProfile =
  res
    "CreateSecurityProfileResponse"
    "fixture/CreateSecurityProfileResponse.proto"
    ioT
    (Proxy :: Proxy CreateSecurityProfile)

responseDeleteTopicRule :: DeleteTopicRuleResponse -> TestTree
responseDeleteTopicRule =
  res
    "DeleteTopicRuleResponse"
    "fixture/DeleteTopicRuleResponse.proto"
    ioT
    (Proxy :: Proxy DeleteTopicRule)

responseDeleteCACertificate :: DeleteCACertificateResponse -> TestTree
responseDeleteCACertificate =
  res
    "DeleteCACertificateResponse"
    "fixture/DeleteCACertificateResponse.proto"
    ioT
    (Proxy :: Proxy DeleteCACertificate)

responseDeleteCustomMetric :: DeleteCustomMetricResponse -> TestTree
responseDeleteCustomMetric =
  res
    "DeleteCustomMetricResponse"
    "fixture/DeleteCustomMetricResponse.proto"
    ioT
    (Proxy :: Proxy DeleteCustomMetric)

responseUpdateCustomMetric :: UpdateCustomMetricResponse -> TestTree
responseUpdateCustomMetric =
  res
    "UpdateCustomMetricResponse"
    "fixture/UpdateCustomMetricResponse.proto"
    ioT
    (Proxy :: Proxy UpdateCustomMetric)

responseCancelAuditTask :: CancelAuditTaskResponse -> TestTree
responseCancelAuditTask =
  res
    "CancelAuditTaskResponse"
    "fixture/CancelAuditTaskResponse.proto"
    ioT
    (Proxy :: Proxy CancelAuditTask)

responseListRoleAliases :: ListRoleAliasesResponse -> TestTree
responseListRoleAliases =
  res
    "ListRoleAliasesResponse"
    "fixture/ListRoleAliasesResponse.proto"
    ioT
    (Proxy :: Proxy ListRoleAliases)

responseStartAuditMitigationActionsTask :: StartAuditMitigationActionsTaskResponse -> TestTree
responseStartAuditMitigationActionsTask =
  res
    "StartAuditMitigationActionsTaskResponse"
    "fixture/StartAuditMitigationActionsTaskResponse.proto"
    ioT
    (Proxy :: Proxy StartAuditMitigationActionsTask)

responseAttachSecurityProfile :: AttachSecurityProfileResponse -> TestTree
responseAttachSecurityProfile =
  res
    "AttachSecurityProfileResponse"
    "fixture/AttachSecurityProfileResponse.proto"
    ioT
    (Proxy :: Proxy AttachSecurityProfile)

responseDeleteJob :: DeleteJobResponse -> TestTree
responseDeleteJob =
  res
    "DeleteJobResponse"
    "fixture/DeleteJobResponse.proto"
    ioT
    (Proxy :: Proxy DeleteJob)

responseTransferCertificate :: TransferCertificateResponse -> TestTree
responseTransferCertificate =
  res
    "TransferCertificateResponse"
    "fixture/TransferCertificateResponse.proto"
    ioT
    (Proxy :: Proxy TransferCertificate)

responseCreateKeysAndCertificate :: CreateKeysAndCertificateResponse -> TestTree
responseCreateKeysAndCertificate =
  res
    "CreateKeysAndCertificateResponse"
    "fixture/CreateKeysAndCertificateResponse.proto"
    ioT
    (Proxy :: Proxy CreateKeysAndCertificate)

responseUpdateCACertificate :: UpdateCACertificateResponse -> TestTree
responseUpdateCACertificate =
  res
    "UpdateCACertificateResponse"
    "fixture/UpdateCACertificateResponse.proto"
    ioT
    (Proxy :: Proxy UpdateCACertificate)

responseUpdateJob :: UpdateJobResponse -> TestTree
responseUpdateJob =
  res
    "UpdateJobResponse"
    "fixture/UpdateJobResponse.proto"
    ioT
    (Proxy :: Proxy UpdateJob)

responseCreateRoleAlias :: CreateRoleAliasResponse -> TestTree
responseCreateRoleAlias =
  res
    "CreateRoleAliasResponse"
    "fixture/CreateRoleAliasResponse.proto"
    ioT
    (Proxy :: Proxy CreateRoleAlias)

responseListThingsInBillingGroup :: ListThingsInBillingGroupResponse -> TestTree
responseListThingsInBillingGroup =
  res
    "ListThingsInBillingGroupResponse"
    "fixture/ListThingsInBillingGroupResponse.proto"
    ioT
    (Proxy :: Proxy ListThingsInBillingGroup)

responseListTargetsForSecurityProfile :: ListTargetsForSecurityProfileResponse -> TestTree
responseListTargetsForSecurityProfile =
  res
    "ListTargetsForSecurityProfileResponse"
    "fixture/ListTargetsForSecurityProfileResponse.proto"
    ioT
    (Proxy :: Proxy ListTargetsForSecurityProfile)

responseListCustomMetrics :: ListCustomMetricsResponse -> TestTree
responseListCustomMetrics =
  res
    "ListCustomMetricsResponse"
    "fixture/ListCustomMetricsResponse.proto"
    ioT
    (Proxy :: Proxy ListCustomMetrics)

responseDescribeProvisioningTemplateVersion :: DescribeProvisioningTemplateVersionResponse -> TestTree
responseDescribeProvisioningTemplateVersion =
  res
    "DescribeProvisioningTemplateVersionResponse"
    "fixture/DescribeProvisioningTemplateVersionResponse.proto"
    ioT
    (Proxy :: Proxy DescribeProvisioningTemplateVersion)

responseGetPercentiles :: GetPercentilesResponse -> TestTree
responseGetPercentiles =
  res
    "GetPercentilesResponse"
    "fixture/GetPercentilesResponse.proto"
    ioT
    (Proxy :: Proxy GetPercentiles)

responseCreatePolicyVersion :: CreatePolicyVersionResponse -> TestTree
responseCreatePolicyVersion =
  res
    "CreatePolicyVersionResponse"
    "fixture/CreatePolicyVersionResponse.proto"
    ioT
    (Proxy :: Proxy CreatePolicyVersion)

responseDescribeEndpoint :: DescribeEndpointResponse -> TestTree
responseDescribeEndpoint =
  res
    "DescribeEndpointResponse"
    "fixture/DescribeEndpointResponse.proto"
    ioT
    (Proxy :: Proxy DescribeEndpoint)

responseSetDefaultPolicyVersion :: SetDefaultPolicyVersionResponse -> TestTree
responseSetDefaultPolicyVersion =
  res
    "SetDefaultPolicyVersionResponse"
    "fixture/SetDefaultPolicyVersionResponse.proto"
    ioT
    (Proxy :: Proxy SetDefaultPolicyVersion)

responseCreateCustomMetric :: CreateCustomMetricResponse -> TestTree
responseCreateCustomMetric =
  res
    "CreateCustomMetricResponse"
    "fixture/CreateCustomMetricResponse.proto"
    ioT
    (Proxy :: Proxy CreateCustomMetric)

responseDisableTopicRule :: DisableTopicRuleResponse -> TestTree
responseDisableTopicRule =
  res
    "DisableTopicRuleResponse"
    "fixture/DisableTopicRuleResponse.proto"
    ioT
    (Proxy :: Proxy DisableTopicRule)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    ioT
    (Proxy :: Proxy UntagResource)

responseDescribeAuditMitigationActionsTask :: DescribeAuditMitigationActionsTaskResponse -> TestTree
responseDescribeAuditMitigationActionsTask =
  res
    "DescribeAuditMitigationActionsTaskResponse"
    "fixture/DescribeAuditMitigationActionsTaskResponse.proto"
    ioT
    (Proxy :: Proxy DescribeAuditMitigationActionsTask)

responseSetV2LoggingLevel :: SetV2LoggingLevelResponse -> TestTree
responseSetV2LoggingLevel =
  res
    "SetV2LoggingLevelResponse"
    "fixture/SetV2LoggingLevelResponse.proto"
    ioT
    (Proxy :: Proxy SetV2LoggingLevel)

responseListJobExecutionsForThing :: ListJobExecutionsForThingResponse -> TestTree
responseListJobExecutionsForThing =
  res
    "ListJobExecutionsForThingResponse"
    "fixture/ListJobExecutionsForThingResponse.proto"
    ioT
    (Proxy :: Proxy ListJobExecutionsForThing)

responseCreateThing :: CreateThingResponse -> TestTree
responseCreateThing =
  res
    "CreateThingResponse"
    "fixture/CreateThingResponse.proto"
    ioT
    (Proxy :: Proxy CreateThing)

responseDescribeCertificate :: DescribeCertificateResponse -> TestTree
responseDescribeCertificate =
  res
    "DescribeCertificateResponse"
    "fixture/DescribeCertificateResponse.proto"
    ioT
    (Proxy :: Proxy DescribeCertificate)

responseUpdateProvisioningTemplate :: UpdateProvisioningTemplateResponse -> TestTree
responseUpdateProvisioningTemplate =
  res
    "UpdateProvisioningTemplateResponse"
    "fixture/UpdateProvisioningTemplateResponse.proto"
    ioT
    (Proxy :: Proxy UpdateProvisioningTemplate)

responseStartThingRegistrationTask :: StartThingRegistrationTaskResponse -> TestTree
responseStartThingRegistrationTask =
  res
    "StartThingRegistrationTaskResponse"
    "fixture/StartThingRegistrationTaskResponse.proto"
    ioT
    (Proxy :: Proxy StartThingRegistrationTask)

responseSetDefaultAuthorizer :: SetDefaultAuthorizerResponse -> TestTree
responseSetDefaultAuthorizer =
  res
    "SetDefaultAuthorizerResponse"
    "fixture/SetDefaultAuthorizerResponse.proto"
    ioT
    (Proxy :: Proxy SetDefaultAuthorizer)

responseDeleteProvisioningTemplate :: DeleteProvisioningTemplateResponse -> TestTree
responseDeleteProvisioningTemplate =
  res
    "DeleteProvisioningTemplateResponse"
    "fixture/DeleteProvisioningTemplateResponse.proto"
    ioT
    (Proxy :: Proxy DeleteProvisioningTemplate)

responseDescribeMitigationAction :: DescribeMitigationActionResponse -> TestTree
responseDescribeMitigationAction =
  res
    "DescribeMitigationActionResponse"
    "fixture/DescribeMitigationActionResponse.proto"
    ioT
    (Proxy :: Proxy DescribeMitigationAction)

responseDeleteV2LoggingLevel :: DeleteV2LoggingLevelResponse -> TestTree
responseDeleteV2LoggingLevel =
  res
    "DeleteV2LoggingLevelResponse"
    "fixture/DeleteV2LoggingLevelResponse.proto"
    ioT
    (Proxy :: Proxy DeleteV2LoggingLevel)

responseDescribeJobExecution :: DescribeJobExecutionResponse -> TestTree
responseDescribeJobExecution =
  res
    "DescribeJobExecutionResponse"
    "fixture/DescribeJobExecutionResponse.proto"
    ioT
    (Proxy :: Proxy DescribeJobExecution)

responseStopThingRegistrationTask :: StopThingRegistrationTaskResponse -> TestTree
responseStopThingRegistrationTask =
  res
    "StopThingRegistrationTaskResponse"
    "fixture/StopThingRegistrationTaskResponse.proto"
    ioT
    (Proxy :: Proxy StopThingRegistrationTask)

responseCreateScheduledAudit :: CreateScheduledAuditResponse -> TestTree
responseCreateScheduledAudit =
  res
    "CreateScheduledAuditResponse"
    "fixture/CreateScheduledAuditResponse.proto"
    ioT
    (Proxy :: Proxy CreateScheduledAudit)

responseGetIndexingConfiguration :: GetIndexingConfigurationResponse -> TestTree
responseGetIndexingConfiguration =
  res
    "GetIndexingConfigurationResponse"
    "fixture/GetIndexingConfigurationResponse.proto"
    ioT
    (Proxy :: Proxy GetIndexingConfiguration)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    ioT
    (Proxy :: Proxy TagResource)

responseListV2LoggingLevels :: ListV2LoggingLevelsResponse -> TestTree
responseListV2LoggingLevels =
  res
    "ListV2LoggingLevelsResponse"
    "fixture/ListV2LoggingLevelsResponse.proto"
    ioT
    (Proxy :: Proxy ListV2LoggingLevels)

responseListProvisioningTemplates :: ListProvisioningTemplatesResponse -> TestTree
responseListProvisioningTemplates =
  res
    "ListProvisioningTemplatesResponse"
    "fixture/ListProvisioningTemplatesResponse.proto"
    ioT
    (Proxy :: Proxy ListProvisioningTemplates)

responseListAuditMitigationActionsExecutions :: ListAuditMitigationActionsExecutionsResponse -> TestTree
responseListAuditMitigationActionsExecutions =
  res
    "ListAuditMitigationActionsExecutionsResponse"
    "fixture/ListAuditMitigationActionsExecutionsResponse.proto"
    ioT
    (Proxy :: Proxy ListAuditMitigationActionsExecutions)

responseDeleteAuditSuppression :: DeleteAuditSuppressionResponse -> TestTree
responseDeleteAuditSuppression =
  res
    "DeleteAuditSuppressionResponse"
    "fixture/DeleteAuditSuppressionResponse.proto"
    ioT
    (Proxy :: Proxy DeleteAuditSuppression)

responseListDetectMitigationActionsTasks :: ListDetectMitigationActionsTasksResponse -> TestTree
responseListDetectMitigationActionsTasks =
  res
    "ListDetectMitigationActionsTasksResponse"
    "fixture/ListDetectMitigationActionsTasksResponse.proto"
    ioT
    (Proxy :: Proxy ListDetectMitigationActionsTasks)

responseUpdateStream :: UpdateStreamResponse -> TestTree
responseUpdateStream =
  res
    "UpdateStreamResponse"
    "fixture/UpdateStreamResponse.proto"
    ioT
    (Proxy :: Proxy UpdateStream)

responseDeleteRegistrationCode :: DeleteRegistrationCodeResponse -> TestTree
responseDeleteRegistrationCode =
  res
    "DeleteRegistrationCodeResponse"
    "fixture/DeleteRegistrationCodeResponse.proto"
    ioT
    (Proxy :: Proxy DeleteRegistrationCode)

responseCreateAuthorizer :: CreateAuthorizerResponse -> TestTree
responseCreateAuthorizer =
  res
    "CreateAuthorizerResponse"
    "fixture/CreateAuthorizerResponse.proto"
    ioT
    (Proxy :: Proxy CreateAuthorizer)

responseDescribeDimension :: DescribeDimensionResponse -> TestTree
responseDescribeDimension =
  res
    "DescribeDimensionResponse"
    "fixture/DescribeDimensionResponse.proto"
    ioT
    (Proxy :: Proxy DescribeDimension)

responseDeleteStream :: DeleteStreamResponse -> TestTree
responseDeleteStream =
  res
    "DeleteStreamResponse"
    "fixture/DeleteStreamResponse.proto"
    ioT
    (Proxy :: Proxy DeleteStream)

responseDeleteAccountAuditConfiguration :: DeleteAccountAuditConfigurationResponse -> TestTree
responseDeleteAccountAuditConfiguration =
  res
    "DeleteAccountAuditConfigurationResponse"
    "fixture/DeleteAccountAuditConfigurationResponse.proto"
    ioT
    (Proxy :: Proxy DeleteAccountAuditConfiguration)

responseListThings :: ListThingsResponse -> TestTree
responseListThings =
  res
    "ListThingsResponse"
    "fixture/ListThingsResponse.proto"
    ioT
    (Proxy :: Proxy ListThings)

responseSetV2LoggingOptions :: SetV2LoggingOptionsResponse -> TestTree
responseSetV2LoggingOptions =
  res
    "SetV2LoggingOptionsResponse"
    "fixture/SetV2LoggingOptionsResponse.proto"
    ioT
    (Proxy :: Proxy SetV2LoggingOptions)

responseUpdateThing :: UpdateThingResponse -> TestTree
responseUpdateThing =
  res
    "UpdateThingResponse"
    "fixture/UpdateThingResponse.proto"
    ioT
    (Proxy :: Proxy UpdateThing)

responseAddThingToThingGroup :: AddThingToThingGroupResponse -> TestTree
responseAddThingToThingGroup =
  res
    "AddThingToThingGroupResponse"
    "fixture/AddThingToThingGroupResponse.proto"
    ioT
    (Proxy :: Proxy AddThingToThingGroup)

responseGetLoggingOptions :: GetLoggingOptionsResponse -> TestTree
responseGetLoggingOptions =
  res
    "GetLoggingOptionsResponse"
    "fixture/GetLoggingOptionsResponse.proto"
    ioT
    (Proxy :: Proxy GetLoggingOptions)

responseUpdateAuditSuppression :: UpdateAuditSuppressionResponse -> TestTree
responseUpdateAuditSuppression =
  res
    "UpdateAuditSuppressionResponse"
    "fixture/UpdateAuditSuppressionResponse.proto"
    ioT
    (Proxy :: Proxy UpdateAuditSuppression)

responseListScheduledAudits :: ListScheduledAuditsResponse -> TestTree
responseListScheduledAudits =
  res
    "ListScheduledAuditsResponse"
    "fixture/ListScheduledAuditsResponse.proto"
    ioT
    (Proxy :: Proxy ListScheduledAudits)

responseAttachThingPrincipal :: AttachThingPrincipalResponse -> TestTree
responseAttachThingPrincipal =
  res
    "AttachThingPrincipalResponse"
    "fixture/AttachThingPrincipalResponse.proto"
    ioT
    (Proxy :: Proxy AttachThingPrincipal)

responseDeleteThing :: DeleteThingResponse -> TestTree
responseDeleteThing =
  res
    "DeleteThingResponse"
    "fixture/DeleteThingResponse.proto"
    ioT
    (Proxy :: Proxy DeleteThing)

responseListCertificatesByCA :: ListCertificatesByCAResponse -> TestTree
responseListCertificatesByCA =
  res
    "ListCertificatesByCAResponse"
    "fixture/ListCertificatesByCAResponse.proto"
    ioT
    (Proxy :: Proxy ListCertificatesByCA)

responseListThingGroupsForThing :: ListThingGroupsForThingResponse -> TestTree
responseListThingGroupsForThing =
  res
    "ListThingGroupsForThingResponse"
    "fixture/ListThingGroupsForThingResponse.proto"
    ioT
    (Proxy :: Proxy ListThingGroupsForThing)

responseUpdateBillingGroup :: UpdateBillingGroupResponse -> TestTree
responseUpdateBillingGroup =
  res
    "UpdateBillingGroupResponse"
    "fixture/UpdateBillingGroupResponse.proto"
    ioT
    (Proxy :: Proxy UpdateBillingGroup)

responseDeleteBillingGroup :: DeleteBillingGroupResponse -> TestTree
responseDeleteBillingGroup =
  res
    "DeleteBillingGroupResponse"
    "fixture/DeleteBillingGroupResponse.proto"
    ioT
    (Proxy :: Proxy DeleteBillingGroup)

responseUpdateAccountAuditConfiguration :: UpdateAccountAuditConfigurationResponse -> TestTree
responseUpdateAccountAuditConfiguration =
  res
    "UpdateAccountAuditConfigurationResponse"
    "fixture/UpdateAccountAuditConfigurationResponse.proto"
    ioT
    (Proxy :: Proxy UpdateAccountAuditConfiguration)

responseDescribeThingRegistrationTask :: DescribeThingRegistrationTaskResponse -> TestTree
responseDescribeThingRegistrationTask =
  res
    "DescribeThingRegistrationTaskResponse"
    "fixture/DescribeThingRegistrationTaskResponse.proto"
    ioT
    (Proxy :: Proxy DescribeThingRegistrationTask)

responseDescribeCustomMetric :: DescribeCustomMetricResponse -> TestTree
responseDescribeCustomMetric =
  res
    "DescribeCustomMetricResponse"
    "fixture/DescribeCustomMetricResponse.proto"
    ioT
    (Proxy :: Proxy DescribeCustomMetric)

responseDescribeCACertificate :: DescribeCACertificateResponse -> TestTree
responseDescribeCACertificate =
  res
    "DescribeCACertificateResponse"
    "fixture/DescribeCACertificateResponse.proto"
    ioT
    (Proxy :: Proxy DescribeCACertificate)

responseDeleteProvisioningTemplateVersion :: DeleteProvisioningTemplateVersionResponse -> TestTree
responseDeleteProvisioningTemplateVersion =
  res
    "DeleteProvisioningTemplateVersionResponse"
    "fixture/DeleteProvisioningTemplateVersionResponse.proto"
    ioT
    (Proxy :: Proxy DeleteProvisioningTemplateVersion)

responseDeleteOTAUpdate :: DeleteOTAUpdateResponse -> TestTree
responseDeleteOTAUpdate =
  res
    "DeleteOTAUpdateResponse"
    "fixture/DeleteOTAUpdateResponse.proto"
    ioT
    (Proxy :: Proxy DeleteOTAUpdate)

responseRegisterCertificateWithoutCA :: RegisterCertificateWithoutCAResponse -> TestTree
responseRegisterCertificateWithoutCA =
  res
    "RegisterCertificateWithoutCAResponse"
    "fixture/RegisterCertificateWithoutCAResponse.proto"
    ioT
    (Proxy :: Proxy RegisterCertificateWithoutCA)

responseListDetectMitigationActionsExecutions :: ListDetectMitigationActionsExecutionsResponse -> TestTree
responseListDetectMitigationActionsExecutions =
  res
    "ListDetectMitigationActionsExecutionsResponse"
    "fixture/ListDetectMitigationActionsExecutionsResponse.proto"
    ioT
    (Proxy :: Proxy ListDetectMitigationActionsExecutions)

responseCreateDynamicThingGroup :: CreateDynamicThingGroupResponse -> TestTree
responseCreateDynamicThingGroup =
  res
    "CreateDynamicThingGroupResponse"
    "fixture/CreateDynamicThingGroupResponse.proto"
    ioT
    (Proxy :: Proxy CreateDynamicThingGroup)

responseGetRegistrationCode :: GetRegistrationCodeResponse -> TestTree
responseGetRegistrationCode =
  res
    "GetRegistrationCodeResponse"
    "fixture/GetRegistrationCodeResponse.proto"
    ioT
    (Proxy :: Proxy GetRegistrationCode)

responseDescribeJob :: DescribeJobResponse -> TestTree
responseDescribeJob =
  res
    "DescribeJobResponse"
    "fixture/DescribeJobResponse.proto"
    ioT
    (Proxy :: Proxy DescribeJob)

responseDetachSecurityProfile :: DetachSecurityProfileResponse -> TestTree
responseDetachSecurityProfile =
  res
    "DetachSecurityProfileResponse"
    "fixture/DetachSecurityProfileResponse.proto"
    ioT
    (Proxy :: Proxy DetachSecurityProfile)

responseTestInvokeAuthorizer :: TestInvokeAuthorizerResponse -> TestTree
responseTestInvokeAuthorizer =
  res
    "TestInvokeAuthorizerResponse"
    "fixture/TestInvokeAuthorizerResponse.proto"
    ioT
    (Proxy :: Proxy TestInvokeAuthorizer)

responseRemoveThingFromThingGroup :: RemoveThingFromThingGroupResponse -> TestTree
responseRemoveThingFromThingGroup =
  res
    "RemoveThingFromThingGroupResponse"
    "fixture/RemoveThingFromThingGroupResponse.proto"
    ioT
    (Proxy :: Proxy RemoveThingFromThingGroup)

responseGetBehaviorModelTrainingSummaries :: GetBehaviorModelTrainingSummariesResponse -> TestTree
responseGetBehaviorModelTrainingSummaries =
  res
    "GetBehaviorModelTrainingSummariesResponse"
    "fixture/GetBehaviorModelTrainingSummariesResponse.proto"
    ioT
    (Proxy :: Proxy GetBehaviorModelTrainingSummaries)

responseCreateProvisioningTemplateVersion :: CreateProvisioningTemplateVersionResponse -> TestTree
responseCreateProvisioningTemplateVersion =
  res
    "CreateProvisioningTemplateVersionResponse"
    "fixture/CreateProvisioningTemplateVersionResponse.proto"
    ioT
    (Proxy :: Proxy CreateProvisioningTemplateVersion)

responseListPrincipalThings :: ListPrincipalThingsResponse -> TestTree
responseListPrincipalThings =
  res
    "ListPrincipalThingsResponse"
    "fixture/ListPrincipalThingsResponse.proto"
    ioT
    (Proxy :: Proxy ListPrincipalThings)

responseListAuditMitigationActionsTasks :: ListAuditMitigationActionsTasksResponse -> TestTree
responseListAuditMitigationActionsTasks =
  res
    "ListAuditMitigationActionsTasksResponse"
    "fixture/ListAuditMitigationActionsTasksResponse.proto"
    ioT
    (Proxy :: Proxy ListAuditMitigationActionsTasks)

responseDescribeRoleAlias :: DescribeRoleAliasResponse -> TestTree
responseDescribeRoleAlias =
  res
    "DescribeRoleAliasResponse"
    "fixture/DescribeRoleAliasResponse.proto"
    ioT
    (Proxy :: Proxy DescribeRoleAlias)

responseCreateTopicRuleDestination :: CreateTopicRuleDestinationResponse -> TestTree
responseCreateTopicRuleDestination =
  res
    "CreateTopicRuleDestinationResponse"
    "fixture/CreateTopicRuleDestinationResponse.proto"
    ioT
    (Proxy :: Proxy CreateTopicRuleDestination)

responseCreateOTAUpdate :: CreateOTAUpdateResponse -> TestTree
responseCreateOTAUpdate =
  res
    "CreateOTAUpdateResponse"
    "fixture/CreateOTAUpdateResponse.proto"
    ioT
    (Proxy :: Proxy CreateOTAUpdate)

responseDeleteDynamicThingGroup :: DeleteDynamicThingGroupResponse -> TestTree
responseDeleteDynamicThingGroup =
  res
    "DeleteDynamicThingGroupResponse"
    "fixture/DeleteDynamicThingGroupResponse.proto"
    ioT
    (Proxy :: Proxy DeleteDynamicThingGroup)

responseUpdateDynamicThingGroup :: UpdateDynamicThingGroupResponse -> TestTree
responseUpdateDynamicThingGroup =
  res
    "UpdateDynamicThingGroupResponse"
    "fixture/UpdateDynamicThingGroupResponse.proto"
    ioT
    (Proxy :: Proxy UpdateDynamicThingGroup)

responseDetachPolicy :: DetachPolicyResponse -> TestTree
responseDetachPolicy =
  res
    "DetachPolicyResponse"
    "fixture/DetachPolicyResponse.proto"
    ioT
    (Proxy :: Proxy DetachPolicy)

responseListThingPrincipals :: ListThingPrincipalsResponse -> TestTree
responseListThingPrincipals =
  res
    "ListThingPrincipalsResponse"
    "fixture/ListThingPrincipalsResponse.proto"
    ioT
    (Proxy :: Proxy ListThingPrincipals)

responseDescribeDefaultAuthorizer :: DescribeDefaultAuthorizerResponse -> TestTree
responseDescribeDefaultAuthorizer =
  res
    "DescribeDefaultAuthorizerResponse"
    "fixture/DescribeDefaultAuthorizerResponse.proto"
    ioT
    (Proxy :: Proxy DescribeDefaultAuthorizer)

responseCreateThingGroup :: CreateThingGroupResponse -> TestTree
responseCreateThingGroup =
  res
    "CreateThingGroupResponse"
    "fixture/CreateThingGroupResponse.proto"
    ioT
    (Proxy :: Proxy CreateThingGroup)

responseRegisterCertificate :: RegisterCertificateResponse -> TestTree
responseRegisterCertificate =
  res
    "RegisterCertificateResponse"
    "fixture/RegisterCertificateResponse.proto"
    ioT
    (Proxy :: Proxy RegisterCertificate)

responseDeleteSecurityProfile :: DeleteSecurityProfileResponse -> TestTree
responseDeleteSecurityProfile =
  res
    "DeleteSecurityProfileResponse"
    "fixture/DeleteSecurityProfileResponse.proto"
    ioT
    (Proxy :: Proxy DeleteSecurityProfile)

responseValidateSecurityProfileBehaviors :: ValidateSecurityProfileBehaviorsResponse -> TestTree
responseValidateSecurityProfileBehaviors =
  res
    "ValidateSecurityProfileBehaviorsResponse"
    "fixture/ValidateSecurityProfileBehaviorsResponse.proto"
    ioT
    (Proxy :: Proxy ValidateSecurityProfileBehaviors)

responseCreateDomainConfiguration :: CreateDomainConfigurationResponse -> TestTree
responseCreateDomainConfiguration =
  res
    "CreateDomainConfigurationResponse"
    "fixture/CreateDomainConfigurationResponse.proto"
    ioT
    (Proxy :: Proxy CreateDomainConfiguration)

responseGetPolicyVersion :: GetPolicyVersionResponse -> TestTree
responseGetPolicyVersion =
  res
    "GetPolicyVersionResponse"
    "fixture/GetPolicyVersionResponse.proto"
    ioT
    (Proxy :: Proxy GetPolicyVersion)

responseListCertificates :: ListCertificatesResponse -> TestTree
responseListCertificates =
  res
    "ListCertificatesResponse"
    "fixture/ListCertificatesResponse.proto"
    ioT
    (Proxy :: Proxy ListCertificates)

responseUpdateSecurityProfile :: UpdateSecurityProfileResponse -> TestTree
responseUpdateSecurityProfile =
  res
    "UpdateSecurityProfileResponse"
    "fixture/UpdateSecurityProfileResponse.proto"
    ioT
    (Proxy :: Proxy UpdateSecurityProfile)

responseListActiveViolations :: ListActiveViolationsResponse -> TestTree
responseListActiveViolations =
  res
    "ListActiveViolationsResponse"
    "fixture/ListActiveViolationsResponse.proto"
    ioT
    (Proxy :: Proxy ListActiveViolations)

responseDescribeAuthorizer :: DescribeAuthorizerResponse -> TestTree
responseDescribeAuthorizer =
  res
    "DescribeAuthorizerResponse"
    "fixture/DescribeAuthorizerResponse.proto"
    ioT
    (Proxy :: Proxy DescribeAuthorizer)

responseDescribeAccountAuditConfiguration :: DescribeAccountAuditConfigurationResponse -> TestTree
responseDescribeAccountAuditConfiguration =
  res
    "DescribeAccountAuditConfigurationResponse"
    "fixture/DescribeAccountAuditConfigurationResponse.proto"
    ioT
    (Proxy :: Proxy DescribeAccountAuditConfiguration)

responseDeprecateThingType :: DeprecateThingTypeResponse -> TestTree
responseDeprecateThingType =
  res
    "DeprecateThingTypeResponse"
    "fixture/DeprecateThingTypeResponse.proto"
    ioT
    (Proxy :: Proxy DeprecateThingType)

responseDeleteDimension :: DeleteDimensionResponse -> TestTree
responseDeleteDimension =
  res
    "DeleteDimensionResponse"
    "fixture/DeleteDimensionResponse.proto"
    ioT
    (Proxy :: Proxy DeleteDimension)

responseDescribeBillingGroup :: DescribeBillingGroupResponse -> TestTree
responseDescribeBillingGroup =
  res
    "DescribeBillingGroupResponse"
    "fixture/DescribeBillingGroupResponse.proto"
    ioT
    (Proxy :: Proxy DescribeBillingGroup)

responseUpdateDimension :: UpdateDimensionResponse -> TestTree
responseUpdateDimension =
  res
    "UpdateDimensionResponse"
    "fixture/UpdateDimensionResponse.proto"
    ioT
    (Proxy :: Proxy UpdateDimension)

responseConfirmTopicRuleDestination :: ConfirmTopicRuleDestinationResponse -> TestTree
responseConfirmTopicRuleDestination =
  res
    "ConfirmTopicRuleDestinationResponse"
    "fixture/ConfirmTopicRuleDestinationResponse.proto"
    ioT
    (Proxy :: Proxy ConfirmTopicRuleDestination)

responseDescribeDetectMitigationActionsTask :: DescribeDetectMitigationActionsTaskResponse -> TestTree
responseDescribeDetectMitigationActionsTask =
  res
    "DescribeDetectMitigationActionsTaskResponse"
    "fixture/DescribeDetectMitigationActionsTaskResponse.proto"
    ioT
    (Proxy :: Proxy DescribeDetectMitigationActionsTask)

responseListThingRegistrationTasks :: ListThingRegistrationTasksResponse -> TestTree
responseListThingRegistrationTasks =
  res
    "ListThingRegistrationTasksResponse"
    "fixture/ListThingRegistrationTasksResponse.proto"
    ioT
    (Proxy :: Proxy ListThingRegistrationTasks)

responseListDimensions :: ListDimensionsResponse -> TestTree
responseListDimensions =
  res
    "ListDimensionsResponse"
    "fixture/ListDimensionsResponse.proto"
    ioT
    (Proxy :: Proxy ListDimensions)

responseDescribeAuditSuppression :: DescribeAuditSuppressionResponse -> TestTree
responseDescribeAuditSuppression =
  res
    "DescribeAuditSuppressionResponse"
    "fixture/DescribeAuditSuppressionResponse.proto"
    ioT
    (Proxy :: Proxy DescribeAuditSuppression)

responseListAuditFindings :: ListAuditFindingsResponse -> TestTree
responseListAuditFindings =
  res
    "ListAuditFindingsResponse"
    "fixture/ListAuditFindingsResponse.proto"
    ioT
    (Proxy :: Proxy ListAuditFindings)

responseDescribeThing :: DescribeThingResponse -> TestTree
responseDescribeThing =
  res
    "DescribeThingResponse"
    "fixture/DescribeThingResponse.proto"
    ioT
    (Proxy :: Proxy DescribeThing)

responseDescribeStream :: DescribeStreamResponse -> TestTree
responseDescribeStream =
  res
    "DescribeStreamResponse"
    "fixture/DescribeStreamResponse.proto"
    ioT
    (Proxy :: Proxy DescribeStream)

responseDetachThingPrincipal :: DetachThingPrincipalResponse -> TestTree
responseDetachThingPrincipal =
  res
    "DetachThingPrincipalResponse"
    "fixture/DetachThingPrincipalResponse.proto"
    ioT
    (Proxy :: Proxy DetachThingPrincipal)

responseStartOnDemandAuditTask :: StartOnDemandAuditTaskResponse -> TestTree
responseStartOnDemandAuditTask =
  res
    "StartOnDemandAuditTaskResponse"
    "fixture/StartOnDemandAuditTaskResponse.proto"
    ioT
    (Proxy :: Proxy StartOnDemandAuditTask)

responseListAttachedPolicies :: ListAttachedPoliciesResponse -> TestTree
responseListAttachedPolicies =
  res
    "ListAttachedPoliciesResponse"
    "fixture/ListAttachedPoliciesResponse.proto"
    ioT
    (Proxy :: Proxy ListAttachedPolicies)

responseGetPolicy :: GetPolicyResponse -> TestTree
responseGetPolicy =
  res
    "GetPolicyResponse"
    "fixture/GetPolicyResponse.proto"
    ioT
    (Proxy :: Proxy GetPolicy)

responseListCACertificates :: ListCACertificatesResponse -> TestTree
responseListCACertificates =
  res
    "ListCACertificatesResponse"
    "fixture/ListCACertificatesResponse.proto"
    ioT
    (Proxy :: Proxy ListCACertificates)

responseEnableTopicRule :: EnableTopicRuleResponse -> TestTree
responseEnableTopicRule =
  res
    "EnableTopicRuleResponse"
    "fixture/EnableTopicRuleResponse.proto"
    ioT
    (Proxy :: Proxy EnableTopicRule)

responseListJobs :: ListJobsResponse -> TestTree
responseListJobs =
  res
    "ListJobsResponse"
    "fixture/ListJobsResponse.proto"
    ioT
    (Proxy :: Proxy ListJobs)

responseRegisterCACertificate :: RegisterCACertificateResponse -> TestTree
responseRegisterCACertificate =
  res
    "RegisterCACertificateResponse"
    "fixture/RegisterCACertificateResponse.proto"
    ioT
    (Proxy :: Proxy RegisterCACertificate)

responseListSecurityProfilesForTarget :: ListSecurityProfilesForTargetResponse -> TestTree
responseListSecurityProfilesForTarget =
  res
    "ListSecurityProfilesForTargetResponse"
    "fixture/ListSecurityProfilesForTargetResponse.proto"
    ioT
    (Proxy :: Proxy ListSecurityProfilesForTarget)

responseUpdateEventConfigurations :: UpdateEventConfigurationsResponse -> TestTree
responseUpdateEventConfigurations =
  res
    "UpdateEventConfigurationsResponse"
    "fixture/UpdateEventConfigurationsResponse.proto"
    ioT
    (Proxy :: Proxy UpdateEventConfigurations)

responseGetJobDocument :: GetJobDocumentResponse -> TestTree
responseGetJobDocument =
  res
    "GetJobDocumentResponse"
    "fixture/GetJobDocumentResponse.proto"
    ioT
    (Proxy :: Proxy GetJobDocument)

responseListTopicRules :: ListTopicRulesResponse -> TestTree
responseListTopicRules =
  res
    "ListTopicRulesResponse"
    "fixture/ListTopicRulesResponse.proto"
    ioT
    (Proxy :: Proxy ListTopicRules)

responseDescribeThingGroup :: DescribeThingGroupResponse -> TestTree
responseDescribeThingGroup =
  res
    "DescribeThingGroupResponse"
    "fixture/DescribeThingGroupResponse.proto"
    ioT
    (Proxy :: Proxy DescribeThingGroup)

responseAcceptCertificateTransfer :: AcceptCertificateTransferResponse -> TestTree
responseAcceptCertificateTransfer =
  res
    "AcceptCertificateTransferResponse"
    "fixture/AcceptCertificateTransferResponse.proto"
    ioT
    (Proxy :: Proxy AcceptCertificateTransfer)

responseUpdateThingGroupsForThing :: UpdateThingGroupsForThingResponse -> TestTree
responseUpdateThingGroupsForThing =
  res
    "UpdateThingGroupsForThingResponse"
    "fixture/UpdateThingGroupsForThingResponse.proto"
    ioT
    (Proxy :: Proxy UpdateThingGroupsForThing)

responseListTargetsForPolicy :: ListTargetsForPolicyResponse -> TestTree
responseListTargetsForPolicy =
  res
    "ListTargetsForPolicyResponse"
    "fixture/ListTargetsForPolicyResponse.proto"
    ioT
    (Proxy :: Proxy ListTargetsForPolicy)

responseReplaceTopicRule :: ReplaceTopicRuleResponse -> TestTree
responseReplaceTopicRule =
  res
    "ReplaceTopicRuleResponse"
    "fixture/ReplaceTopicRuleResponse.proto"
    ioT
    (Proxy :: Proxy ReplaceTopicRule)

responseDescribeIndex :: DescribeIndexResponse -> TestTree
responseDescribeIndex =
  res
    "DescribeIndexResponse"
    "fixture/DescribeIndexResponse.proto"
    ioT
    (Proxy :: Proxy DescribeIndex)

responseDeletePolicyVersion :: DeletePolicyVersionResponse -> TestTree
responseDeletePolicyVersion =
  res
    "DeletePolicyVersionResponse"
    "fixture/DeletePolicyVersionResponse.proto"
    ioT
    (Proxy :: Proxy DeletePolicyVersion)

responseAttachPolicy :: AttachPolicyResponse -> TestTree
responseAttachPolicy =
  res
    "AttachPolicyResponse"
    "fixture/AttachPolicyResponse.proto"
    ioT
    (Proxy :: Proxy AttachPolicy)

responseClearDefaultAuthorizer :: ClearDefaultAuthorizerResponse -> TestTree
responseClearDefaultAuthorizer =
  res
    "ClearDefaultAuthorizerResponse"
    "fixture/ClearDefaultAuthorizerResponse.proto"
    ioT
    (Proxy :: Proxy ClearDefaultAuthorizer)

responseCreateTopicRule :: CreateTopicRuleResponse -> TestTree
responseCreateTopicRule =
  res
    "CreateTopicRuleResponse"
    "fixture/CreateTopicRuleResponse.proto"
    ioT
    (Proxy :: Proxy CreateTopicRule)

responseCreateJob :: CreateJobResponse -> TestTree
responseCreateJob =
  res
    "CreateJobResponse"
    "fixture/CreateJobResponse.proto"
    ioT
    (Proxy :: Proxy CreateJob)

responseUpdateRoleAlias :: UpdateRoleAliasResponse -> TestTree
responseUpdateRoleAlias =
  res
    "UpdateRoleAliasResponse"
    "fixture/UpdateRoleAliasResponse.proto"
    ioT
    (Proxy :: Proxy UpdateRoleAlias)

responseDeleteRoleAlias :: DeleteRoleAliasResponse -> TestTree
responseDeleteRoleAlias =
  res
    "DeleteRoleAliasResponse"
    "fixture/DeleteRoleAliasResponse.proto"
    ioT
    (Proxy :: Proxy DeleteRoleAlias)

responseGetStatistics :: GetStatisticsResponse -> TestTree
responseGetStatistics =
  res
    "GetStatisticsResponse"
    "fixture/GetStatisticsResponse.proto"
    ioT
    (Proxy :: Proxy GetStatistics)

responseAssociateTargetsWithJob :: AssociateTargetsWithJobResponse -> TestTree
responseAssociateTargetsWithJob =
  res
    "AssociateTargetsWithJobResponse"
    "fixture/AssociateTargetsWithJobResponse.proto"
    ioT
    (Proxy :: Proxy AssociateTargetsWithJob)

responseListPolicyVersions :: ListPolicyVersionsResponse -> TestTree
responseListPolicyVersions =
  res
    "ListPolicyVersionsResponse"
    "fixture/ListPolicyVersionsResponse.proto"
    ioT
    (Proxy :: Proxy ListPolicyVersions)

responseCancelJobExecution :: CancelJobExecutionResponse -> TestTree
responseCancelJobExecution =
  res
    "CancelJobExecutionResponse"
    "fixture/CancelJobExecutionResponse.proto"
    ioT
    (Proxy :: Proxy CancelJobExecution)

responseCancelCertificateTransfer :: CancelCertificateTransferResponse -> TestTree
responseCancelCertificateTransfer =
  res
    "CancelCertificateTransferResponse"
    "fixture/CancelCertificateTransferResponse.proto"
    ioT
    (Proxy :: Proxy CancelCertificateTransfer)

responseCreateThingType :: CreateThingTypeResponse -> TestTree
responseCreateThingType =
  res
    "CreateThingTypeResponse"
    "fixture/CreateThingTypeResponse.proto"
    ioT
    (Proxy :: Proxy CreateThingType)

responseUpdateAuthorizer :: UpdateAuthorizerResponse -> TestTree
responseUpdateAuthorizer =
  res
    "UpdateAuthorizerResponse"
    "fixture/UpdateAuthorizerResponse.proto"
    ioT
    (Proxy :: Proxy UpdateAuthorizer)

responseSearchIndex :: SearchIndexResponse -> TestTree
responseSearchIndex =
  res
    "SearchIndexResponse"
    "fixture/SearchIndexResponse.proto"
    ioT
    (Proxy :: Proxy SearchIndex)

responseDescribeSecurityProfile :: DescribeSecurityProfileResponse -> TestTree
responseDescribeSecurityProfile =
  res
    "DescribeSecurityProfileResponse"
    "fixture/DescribeSecurityProfileResponse.proto"
    ioT
    (Proxy :: Proxy DescribeSecurityProfile)

responseListJobExecutionsForJob :: ListJobExecutionsForJobResponse -> TestTree
responseListJobExecutionsForJob =
  res
    "ListJobExecutionsForJobResponse"
    "fixture/ListJobExecutionsForJobResponse.proto"
    ioT
    (Proxy :: Proxy ListJobExecutionsForJob)

responseCreateBillingGroup :: CreateBillingGroupResponse -> TestTree
responseCreateBillingGroup =
  res
    "CreateBillingGroupResponse"
    "fixture/CreateBillingGroupResponse.proto"
    ioT
    (Proxy :: Proxy CreateBillingGroup)

responseCancelAuditMitigationActionsTask :: CancelAuditMitigationActionsTaskResponse -> TestTree
responseCancelAuditMitigationActionsTask =
  res
    "CancelAuditMitigationActionsTaskResponse"
    "fixture/CancelAuditMitigationActionsTaskResponse.proto"
    ioT
    (Proxy :: Proxy CancelAuditMitigationActionsTask)

responseCreateStream :: CreateStreamResponse -> TestTree
responseCreateStream =
  res
    "CreateStreamResponse"
    "fixture/CreateStreamResponse.proto"
    ioT
    (Proxy :: Proxy CreateStream)

responseRemoveThingFromBillingGroup :: RemoveThingFromBillingGroupResponse -> TestTree
responseRemoveThingFromBillingGroup =
  res
    "RemoveThingFromBillingGroupResponse"
    "fixture/RemoveThingFromBillingGroupResponse.proto"
    ioT
    (Proxy :: Proxy RemoveThingFromBillingGroup)

responseListAuthorizers :: ListAuthorizersResponse -> TestTree
responseListAuthorizers =
  res
    "ListAuthorizersResponse"
    "fixture/ListAuthorizersResponse.proto"
    ioT
    (Proxy :: Proxy ListAuthorizers)

responseDeleteAuthorizer :: DeleteAuthorizerResponse -> TestTree
responseDeleteAuthorizer =
  res
    "DeleteAuthorizerResponse"
    "fixture/DeleteAuthorizerResponse.proto"
    ioT
    (Proxy :: Proxy DeleteAuthorizer)

responseCreateAuditSuppression :: CreateAuditSuppressionResponse -> TestTree
responseCreateAuditSuppression =
  res
    "CreateAuditSuppressionResponse"
    "fixture/CreateAuditSuppressionResponse.proto"
    ioT
    (Proxy :: Proxy CreateAuditSuppression)

responseCreateProvisioningTemplate :: CreateProvisioningTemplateResponse -> TestTree
responseCreateProvisioningTemplate =
  res
    "CreateProvisioningTemplateResponse"
    "fixture/CreateProvisioningTemplateResponse.proto"
    ioT
    (Proxy :: Proxy CreateProvisioningTemplate)

responseGetTopicRuleDestination :: GetTopicRuleDestinationResponse -> TestTree
responseGetTopicRuleDestination =
  res
    "GetTopicRuleDestinationResponse"
    "fixture/GetTopicRuleDestinationResponse.proto"
    ioT
    (Proxy :: Proxy GetTopicRuleDestination)

responseDescribeAuditTask :: DescribeAuditTaskResponse -> TestTree
responseDescribeAuditTask =
  res
    "DescribeAuditTaskResponse"
    "fixture/DescribeAuditTaskResponse.proto"
    ioT
    (Proxy :: Proxy DescribeAuditTask)

responseDescribeDomainConfiguration :: DescribeDomainConfigurationResponse -> TestTree
responseDescribeDomainConfiguration =
  res
    "DescribeDomainConfigurationResponse"
    "fixture/DescribeDomainConfigurationResponse.proto"
    ioT
    (Proxy :: Proxy DescribeDomainConfiguration)

responseListStreams :: ListStreamsResponse -> TestTree
responseListStreams =
  res
    "ListStreamsResponse"
    "fixture/ListStreamsResponse.proto"
    ioT
    (Proxy :: Proxy ListStreams)

responseListAuditSuppressions :: ListAuditSuppressionsResponse -> TestTree
responseListAuditSuppressions =
  res
    "ListAuditSuppressionsResponse"
    "fixture/ListAuditSuppressionsResponse.proto"
    ioT
    (Proxy :: Proxy ListAuditSuppressions)

responseCreateCertificateFromCSR :: CreateCertificateFromCSRResponse -> TestTree
responseCreateCertificateFromCSR =
  res
    "CreateCertificateFromCSRResponse"
    "fixture/CreateCertificateFromCSRResponse.proto"
    ioT
    (Proxy :: Proxy CreateCertificateFromCSR)

responseGetOTAUpdate :: GetOTAUpdateResponse -> TestTree
responseGetOTAUpdate =
  res
    "GetOTAUpdateResponse"
    "fixture/GetOTAUpdateResponse.proto"
    ioT
    (Proxy :: Proxy GetOTAUpdate)

responseGetEffectivePolicies :: GetEffectivePoliciesResponse -> TestTree
responseGetEffectivePolicies =
  res
    "GetEffectivePoliciesResponse"
    "fixture/GetEffectivePoliciesResponse.proto"
    ioT
    (Proxy :: Proxy GetEffectivePolicies)

responseUpdateScheduledAudit :: UpdateScheduledAuditResponse -> TestTree
responseUpdateScheduledAudit =
  res
    "UpdateScheduledAuditResponse"
    "fixture/UpdateScheduledAuditResponse.proto"
    ioT
    (Proxy :: Proxy UpdateScheduledAudit)

responseDescribeAuditFinding :: DescribeAuditFindingResponse -> TestTree
responseDescribeAuditFinding =
  res
    "DescribeAuditFindingResponse"
    "fixture/DescribeAuditFindingResponse.proto"
    ioT
    (Proxy :: Proxy DescribeAuditFinding)

responseDeleteScheduledAudit :: DeleteScheduledAuditResponse -> TestTree
responseDeleteScheduledAudit =
  res
    "DeleteScheduledAuditResponse"
    "fixture/DeleteScheduledAuditResponse.proto"
    ioT
    (Proxy :: Proxy DeleteScheduledAudit)

responseListBillingGroups :: ListBillingGroupsResponse -> TestTree
responseListBillingGroups =
  res
    "ListBillingGroupsResponse"
    "fixture/ListBillingGroupsResponse.proto"
    ioT
    (Proxy :: Proxy ListBillingGroups)

responseTestAuthorization :: TestAuthorizationResponse -> TestTree
responseTestAuthorization =
  res
    "TestAuthorizationResponse"
    "fixture/TestAuthorizationResponse.proto"
    ioT
    (Proxy :: Proxy TestAuthorization)

responseListThingTypes :: ListThingTypesResponse -> TestTree
responseListThingTypes =
  res
    "ListThingTypesResponse"
    "fixture/ListThingTypesResponse.proto"
    ioT
    (Proxy :: Proxy ListThingTypes)

responseListIndices :: ListIndicesResponse -> TestTree
responseListIndices =
  res
    "ListIndicesResponse"
    "fixture/ListIndicesResponse.proto"
    ioT
    (Proxy :: Proxy ListIndices)

responseDeleteThingType :: DeleteThingTypeResponse -> TestTree
responseDeleteThingType =
  res
    "DeleteThingTypeResponse"
    "fixture/DeleteThingTypeResponse.proto"
    ioT
    (Proxy :: Proxy DeleteThingType)

responseRegisterThing :: RegisterThingResponse -> TestTree
responseRegisterThing =
  res
    "RegisterThingResponse"
    "fixture/RegisterThingResponse.proto"
    ioT
    (Proxy :: Proxy RegisterThing)

responseListOutgoingCertificates :: ListOutgoingCertificatesResponse -> TestTree
responseListOutgoingCertificates =
  res
    "ListOutgoingCertificatesResponse"
    "fixture/ListOutgoingCertificatesResponse.proto"
    ioT
    (Proxy :: Proxy ListOutgoingCertificates)

responseDeleteTopicRuleDestination :: DeleteTopicRuleDestinationResponse -> TestTree
responseDeleteTopicRuleDestination =
  res
    "DeleteTopicRuleDestinationResponse"
    "fixture/DeleteTopicRuleDestinationResponse.proto"
    ioT
    (Proxy :: Proxy DeleteTopicRuleDestination)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    ioT
    (Proxy :: Proxy ListTagsForResource)

responseListTopicRuleDestinations :: ListTopicRuleDestinationsResponse -> TestTree
responseListTopicRuleDestinations =
  res
    "ListTopicRuleDestinationsResponse"
    "fixture/ListTopicRuleDestinationsResponse.proto"
    ioT
    (Proxy :: Proxy ListTopicRuleDestinations)

responseCancelDetectMitigationActionsTask :: CancelDetectMitigationActionsTaskResponse -> TestTree
responseCancelDetectMitigationActionsTask =
  res
    "CancelDetectMitigationActionsTaskResponse"
    "fixture/CancelDetectMitigationActionsTaskResponse.proto"
    ioT
    (Proxy :: Proxy CancelDetectMitigationActionsTask)

responseAddThingToBillingGroup :: AddThingToBillingGroupResponse -> TestTree
responseAddThingToBillingGroup =
  res
    "AddThingToBillingGroupResponse"
    "fixture/AddThingToBillingGroupResponse.proto"
    ioT
    (Proxy :: Proxy AddThingToBillingGroup)

responseDeleteThingGroup :: DeleteThingGroupResponse -> TestTree
responseDeleteThingGroup =
  res
    "DeleteThingGroupResponse"
    "fixture/DeleteThingGroupResponse.proto"
    ioT
    (Proxy :: Proxy DeleteThingGroup)

responseDescribeEventConfigurations :: DescribeEventConfigurationsResponse -> TestTree
responseDescribeEventConfigurations =
  res
    "DescribeEventConfigurationsResponse"
    "fixture/DescribeEventConfigurationsResponse.proto"
    ioT
    (Proxy :: Proxy DescribeEventConfigurations)

responseUpdateTopicRuleDestination :: UpdateTopicRuleDestinationResponse -> TestTree
responseUpdateTopicRuleDestination =
  res
    "UpdateTopicRuleDestinationResponse"
    "fixture/UpdateTopicRuleDestinationResponse.proto"
    ioT
    (Proxy :: Proxy UpdateTopicRuleDestination)

responseListOTAUpdates :: ListOTAUpdatesResponse -> TestTree
responseListOTAUpdates =
  res
    "ListOTAUpdatesResponse"
    "fixture/ListOTAUpdatesResponse.proto"
    ioT
    (Proxy :: Proxy ListOTAUpdates)

responseListThingGroups :: ListThingGroupsResponse -> TestTree
responseListThingGroups =
  res
    "ListThingGroupsResponse"
    "fixture/ListThingGroupsResponse.proto"
    ioT
    (Proxy :: Proxy ListThingGroups)

responseListProvisioningTemplateVersions :: ListProvisioningTemplateVersionsResponse -> TestTree
responseListProvisioningTemplateVersions =
  res
    "ListProvisioningTemplateVersionsResponse"
    "fixture/ListProvisioningTemplateVersionsResponse.proto"
    ioT
    (Proxy :: Proxy ListProvisioningTemplateVersions)

responseUpdateThingGroup :: UpdateThingGroupResponse -> TestTree
responseUpdateThingGroup =
  res
    "UpdateThingGroupResponse"
    "fixture/UpdateThingGroupResponse.proto"
    ioT
    (Proxy :: Proxy UpdateThingGroup)
