{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.SES
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.SES where

import Data.Proxy
import Network.AWS.SES
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.SES.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetSendStatistics $
--             getSendStatistics
--
--         , requestDescribeConfigurationSet $
--             describeConfigurationSet
--
--         , requestPutConfigurationSetDeliveryOptions $
--             putConfigurationSetDeliveryOptions
--
--         , requestDeleteIdentityPolicy $
--             deleteIdentityPolicy
--
--         , requestDescribeReceiptRule $
--             describeReceiptRule
--
--         , requestCreateTemplate $
--             createTemplate
--
--         , requestGetIdentityDkimAttributes $
--             getIdentityDkimAttributes
--
--         , requestCreateReceiptRuleSet $
--             createReceiptRuleSet
--
--         , requestGetSendQuota $
--             getSendQuota
--
--         , requestSetIdentityHeadersInNotificationsEnabled $
--             setIdentityHeadersInNotificationsEnabled
--
--         , requestVerifyDomainIdentity $
--             verifyDomainIdentity
--
--         , requestUpdateTemplate $
--             updateTemplate
--
--         , requestDeleteTemplate $
--             deleteTemplate
--
--         , requestCreateConfigurationSetTrackingOptions $
--             createConfigurationSetTrackingOptions
--
--         , requestDeleteReceiptRuleSet $
--             deleteReceiptRuleSet
--
--         , requestSetReceiptRulePosition $
--             setReceiptRulePosition
--
--         , requestUpdateAccountSendingEnabled $
--             updateAccountSendingEnabled
--
--         , requestGetIdentityVerificationAttributes $
--             getIdentityVerificationAttributes
--
--         , requestGetIdentityPolicies $
--             getIdentityPolicies
--
--         , requestCreateConfigurationSetEventDestination $
--             createConfigurationSetEventDestination
--
--         , requestGetAccountSendingEnabled $
--             getAccountSendingEnabled
--
--         , requestCreateConfigurationSet $
--             createConfigurationSet
--
--         , requestDeleteConfigurationSet $
--             deleteConfigurationSet
--
--         , requestDeleteReceiptRule $
--             deleteReceiptRule
--
--         , requestSetIdentityFeedbackForwardingEnabled $
--             setIdentityFeedbackForwardingEnabled
--
--         , requestCloneReceiptRuleSet $
--             cloneReceiptRuleSet
--
--         , requestUpdateConfigurationSetEventDestination $
--             updateConfigurationSetEventDestination
--
--         , requestUpdateReceiptRule $
--             updateReceiptRule
--
--         , requestDeleteConfigurationSetEventDestination $
--             deleteConfigurationSetEventDestination
--
--         , requestSendEmail $
--             sendEmail
--
--         , requestDeleteVerifiedEmailAddress $
--             deleteVerifiedEmailAddress
--
--         , requestVerifyEmailAddress $
--             verifyEmailAddress
--
--         , requestCreateCustomVerificationEmailTemplate $
--             createCustomVerificationEmailTemplate
--
--         , requestListIdentityPolicies $
--             listIdentityPolicies
--
--         , requestSetIdentityDkimEnabled $
--             setIdentityDkimEnabled
--
--         , requestUpdateConfigurationSetReputationMetricsEnabled $
--             updateConfigurationSetReputationMetricsEnabled
--
--         , requestListCustomVerificationEmailTemplates $
--             listCustomVerificationEmailTemplates
--
--         , requestDeleteIdentity $
--             deleteIdentity
--
--         , requestDeleteCustomVerificationEmailTemplate $
--             deleteCustomVerificationEmailTemplate
--
--         , requestPutIdentityPolicy $
--             putIdentityPolicy
--
--         , requestUpdateCustomVerificationEmailTemplate $
--             updateCustomVerificationEmailTemplate
--
--         , requestDeleteConfigurationSetTrackingOptions $
--             deleteConfigurationSetTrackingOptions
--
--         , requestSendBulkTemplatedEmail $
--             sendBulkTemplatedEmail
--
--         , requestVerifyDomainDkim $
--             verifyDomainDkim
--
--         , requestSendRawEmail $
--             sendRawEmail
--
--         , requestTestRenderTemplate $
--             testRenderTemplate
--
--         , requestSendBounce $
--             sendBounce
--
--         , requestUpdateConfigurationSetTrackingOptions $
--             updateConfigurationSetTrackingOptions
--
--         , requestSendTemplatedEmail $
--             sendTemplatedEmail
--
--         , requestListReceiptRuleSets $
--             listReceiptRuleSets
--
--         , requestReorderReceiptRuleSet $
--             reorderReceiptRuleSet
--
--         , requestListTemplates $
--             listTemplates
--
--         , requestDescribeActiveReceiptRuleSet $
--             describeActiveReceiptRuleSet
--
--         , requestCreateReceiptRule $
--             createReceiptRule
--
--         , requestGetTemplate $
--             getTemplate
--
--         , requestSetActiveReceiptRuleSet $
--             setActiveReceiptRuleSet
--
--         , requestListConfigurationSets $
--             listConfigurationSets
--
--         , requestSetIdentityMailFromDomain $
--             setIdentityMailFromDomain
--
--         , requestGetIdentityMailFromDomainAttributes $
--             getIdentityMailFromDomainAttributes
--
--         , requestSetIdentityNotificationTopic $
--             setIdentityNotificationTopic
--
--         , requestGetCustomVerificationEmailTemplate $
--             getCustomVerificationEmailTemplate
--
--         , requestCreateReceiptFilter $
--             createReceiptFilter
--
--         , requestListVerifiedEmailAddresses $
--             listVerifiedEmailAddresses
--
--         , requestListReceiptFilters $
--             listReceiptFilters
--
--         , requestDeleteReceiptFilter $
--             deleteReceiptFilter
--
--         , requestDescribeReceiptRuleSet $
--             describeReceiptRuleSet
--
--         , requestVerifyEmailIdentity $
--             verifyEmailIdentity
--
--         , requestSendCustomVerificationEmail $
--             sendCustomVerificationEmail
--
--         , requestListIdentities $
--             listIdentities
--
--         , requestGetIdentityNotificationAttributes $
--             getIdentityNotificationAttributes
--
--         , requestUpdateConfigurationSetSendingEnabled $
--             updateConfigurationSetSendingEnabled
--
--           ]

--     , testGroup "response"
--         [ responseGetSendStatistics $
--             getSendStatisticsResponse
--
--         , responseDescribeConfigurationSet $
--             describeConfigurationSetResponse
--
--         , responsePutConfigurationSetDeliveryOptions $
--             putConfigurationSetDeliveryOptionsResponse
--
--         , responseDeleteIdentityPolicy $
--             deleteIdentityPolicyResponse
--
--         , responseDescribeReceiptRule $
--             describeReceiptRuleResponse
--
--         , responseCreateTemplate $
--             createTemplateResponse
--
--         , responseGetIdentityDkimAttributes $
--             getIdentityDkimAttributesResponse
--
--         , responseCreateReceiptRuleSet $
--             createReceiptRuleSetResponse
--
--         , responseGetSendQuota $
--             getSendQuotaResponse
--
--         , responseSetIdentityHeadersInNotificationsEnabled $
--             setIdentityHeadersInNotificationsEnabledResponse
--
--         , responseVerifyDomainIdentity $
--             verifyDomainIdentityResponse
--
--         , responseUpdateTemplate $
--             updateTemplateResponse
--
--         , responseDeleteTemplate $
--             deleteTemplateResponse
--
--         , responseCreateConfigurationSetTrackingOptions $
--             createConfigurationSetTrackingOptionsResponse
--
--         , responseDeleteReceiptRuleSet $
--             deleteReceiptRuleSetResponse
--
--         , responseSetReceiptRulePosition $
--             setReceiptRulePositionResponse
--
--         , responseUpdateAccountSendingEnabled $
--             updateAccountSendingEnabledResponse
--
--         , responseGetIdentityVerificationAttributes $
--             getIdentityVerificationAttributesResponse
--
--         , responseGetIdentityPolicies $
--             getIdentityPoliciesResponse
--
--         , responseCreateConfigurationSetEventDestination $
--             createConfigurationSetEventDestinationResponse
--
--         , responseGetAccountSendingEnabled $
--             getAccountSendingEnabledResponse
--
--         , responseCreateConfigurationSet $
--             createConfigurationSetResponse
--
--         , responseDeleteConfigurationSet $
--             deleteConfigurationSetResponse
--
--         , responseDeleteReceiptRule $
--             deleteReceiptRuleResponse
--
--         , responseSetIdentityFeedbackForwardingEnabled $
--             setIdentityFeedbackForwardingEnabledResponse
--
--         , responseCloneReceiptRuleSet $
--             cloneReceiptRuleSetResponse
--
--         , responseUpdateConfigurationSetEventDestination $
--             updateConfigurationSetEventDestinationResponse
--
--         , responseUpdateReceiptRule $
--             updateReceiptRuleResponse
--
--         , responseDeleteConfigurationSetEventDestination $
--             deleteConfigurationSetEventDestinationResponse
--
--         , responseSendEmail $
--             sendEmailResponse
--
--         , responseDeleteVerifiedEmailAddress $
--             deleteVerifiedEmailAddressResponse
--
--         , responseVerifyEmailAddress $
--             verifyEmailAddressResponse
--
--         , responseCreateCustomVerificationEmailTemplate $
--             createCustomVerificationEmailTemplateResponse
--
--         , responseListIdentityPolicies $
--             listIdentityPoliciesResponse
--
--         , responseSetIdentityDkimEnabled $
--             setIdentityDkimEnabledResponse
--
--         , responseUpdateConfigurationSetReputationMetricsEnabled $
--             updateConfigurationSetReputationMetricsEnabledResponse
--
--         , responseListCustomVerificationEmailTemplates $
--             listCustomVerificationEmailTemplatesResponse
--
--         , responseDeleteIdentity $
--             deleteIdentityResponse
--
--         , responseDeleteCustomVerificationEmailTemplate $
--             deleteCustomVerificationEmailTemplateResponse
--
--         , responsePutIdentityPolicy $
--             putIdentityPolicyResponse
--
--         , responseUpdateCustomVerificationEmailTemplate $
--             updateCustomVerificationEmailTemplateResponse
--
--         , responseDeleteConfigurationSetTrackingOptions $
--             deleteConfigurationSetTrackingOptionsResponse
--
--         , responseSendBulkTemplatedEmail $
--             sendBulkTemplatedEmailResponse
--
--         , responseVerifyDomainDkim $
--             verifyDomainDkimResponse
--
--         , responseSendRawEmail $
--             sendRawEmailResponse
--
--         , responseTestRenderTemplate $
--             testRenderTemplateResponse
--
--         , responseSendBounce $
--             sendBounceResponse
--
--         , responseUpdateConfigurationSetTrackingOptions $
--             updateConfigurationSetTrackingOptionsResponse
--
--         , responseSendTemplatedEmail $
--             sendTemplatedEmailResponse
--
--         , responseListReceiptRuleSets $
--             listReceiptRuleSetsResponse
--
--         , responseReorderReceiptRuleSet $
--             reorderReceiptRuleSetResponse
--
--         , responseListTemplates $
--             listTemplatesResponse
--
--         , responseDescribeActiveReceiptRuleSet $
--             describeActiveReceiptRuleSetResponse
--
--         , responseCreateReceiptRule $
--             createReceiptRuleResponse
--
--         , responseGetTemplate $
--             getTemplateResponse
--
--         , responseSetActiveReceiptRuleSet $
--             setActiveReceiptRuleSetResponse
--
--         , responseListConfigurationSets $
--             listConfigurationSetsResponse
--
--         , responseSetIdentityMailFromDomain $
--             setIdentityMailFromDomainResponse
--
--         , responseGetIdentityMailFromDomainAttributes $
--             getIdentityMailFromDomainAttributesResponse
--
--         , responseSetIdentityNotificationTopic $
--             setIdentityNotificationTopicResponse
--
--         , responseGetCustomVerificationEmailTemplate $
--             getCustomVerificationEmailTemplateResponse
--
--         , responseCreateReceiptFilter $
--             createReceiptFilterResponse
--
--         , responseListVerifiedEmailAddresses $
--             listVerifiedEmailAddressesResponse
--
--         , responseListReceiptFilters $
--             listReceiptFiltersResponse
--
--         , responseDeleteReceiptFilter $
--             deleteReceiptFilterResponse
--
--         , responseDescribeReceiptRuleSet $
--             describeReceiptRuleSetResponse
--
--         , responseVerifyEmailIdentity $
--             verifyEmailIdentityResponse
--
--         , responseSendCustomVerificationEmail $
--             sendCustomVerificationEmailResponse
--
--         , responseListIdentities $
--             listIdentitiesResponse
--
--         , responseGetIdentityNotificationAttributes $
--             getIdentityNotificationAttributesResponse
--
--         , responseUpdateConfigurationSetSendingEnabled $
--             updateConfigurationSetSendingEnabledResponse
--
--           ]
--     ]

-- Requests

requestGetSendStatistics :: GetSendStatistics -> TestTree
requestGetSendStatistics =
  req
    "GetSendStatistics"
    "fixture/GetSendStatistics.yaml"

requestDescribeConfigurationSet :: DescribeConfigurationSet -> TestTree
requestDescribeConfigurationSet =
  req
    "DescribeConfigurationSet"
    "fixture/DescribeConfigurationSet.yaml"

requestPutConfigurationSetDeliveryOptions :: PutConfigurationSetDeliveryOptions -> TestTree
requestPutConfigurationSetDeliveryOptions =
  req
    "PutConfigurationSetDeliveryOptions"
    "fixture/PutConfigurationSetDeliveryOptions.yaml"

requestDeleteIdentityPolicy :: DeleteIdentityPolicy -> TestTree
requestDeleteIdentityPolicy =
  req
    "DeleteIdentityPolicy"
    "fixture/DeleteIdentityPolicy.yaml"

requestDescribeReceiptRule :: DescribeReceiptRule -> TestTree
requestDescribeReceiptRule =
  req
    "DescribeReceiptRule"
    "fixture/DescribeReceiptRule.yaml"

requestCreateTemplate :: CreateTemplate -> TestTree
requestCreateTemplate =
  req
    "CreateTemplate"
    "fixture/CreateTemplate.yaml"

requestGetIdentityDkimAttributes :: GetIdentityDkimAttributes -> TestTree
requestGetIdentityDkimAttributes =
  req
    "GetIdentityDkimAttributes"
    "fixture/GetIdentityDkimAttributes.yaml"

requestCreateReceiptRuleSet :: CreateReceiptRuleSet -> TestTree
requestCreateReceiptRuleSet =
  req
    "CreateReceiptRuleSet"
    "fixture/CreateReceiptRuleSet.yaml"

requestGetSendQuota :: GetSendQuota -> TestTree
requestGetSendQuota =
  req
    "GetSendQuota"
    "fixture/GetSendQuota.yaml"

requestSetIdentityHeadersInNotificationsEnabled :: SetIdentityHeadersInNotificationsEnabled -> TestTree
requestSetIdentityHeadersInNotificationsEnabled =
  req
    "SetIdentityHeadersInNotificationsEnabled"
    "fixture/SetIdentityHeadersInNotificationsEnabled.yaml"

requestVerifyDomainIdentity :: VerifyDomainIdentity -> TestTree
requestVerifyDomainIdentity =
  req
    "VerifyDomainIdentity"
    "fixture/VerifyDomainIdentity.yaml"

requestUpdateTemplate :: UpdateTemplate -> TestTree
requestUpdateTemplate =
  req
    "UpdateTemplate"
    "fixture/UpdateTemplate.yaml"

requestDeleteTemplate :: DeleteTemplate -> TestTree
requestDeleteTemplate =
  req
    "DeleteTemplate"
    "fixture/DeleteTemplate.yaml"

requestCreateConfigurationSetTrackingOptions :: CreateConfigurationSetTrackingOptions -> TestTree
requestCreateConfigurationSetTrackingOptions =
  req
    "CreateConfigurationSetTrackingOptions"
    "fixture/CreateConfigurationSetTrackingOptions.yaml"

requestDeleteReceiptRuleSet :: DeleteReceiptRuleSet -> TestTree
requestDeleteReceiptRuleSet =
  req
    "DeleteReceiptRuleSet"
    "fixture/DeleteReceiptRuleSet.yaml"

requestSetReceiptRulePosition :: SetReceiptRulePosition -> TestTree
requestSetReceiptRulePosition =
  req
    "SetReceiptRulePosition"
    "fixture/SetReceiptRulePosition.yaml"

requestUpdateAccountSendingEnabled :: UpdateAccountSendingEnabled -> TestTree
requestUpdateAccountSendingEnabled =
  req
    "UpdateAccountSendingEnabled"
    "fixture/UpdateAccountSendingEnabled.yaml"

requestGetIdentityVerificationAttributes :: GetIdentityVerificationAttributes -> TestTree
requestGetIdentityVerificationAttributes =
  req
    "GetIdentityVerificationAttributes"
    "fixture/GetIdentityVerificationAttributes.yaml"

requestGetIdentityPolicies :: GetIdentityPolicies -> TestTree
requestGetIdentityPolicies =
  req
    "GetIdentityPolicies"
    "fixture/GetIdentityPolicies.yaml"

requestCreateConfigurationSetEventDestination :: CreateConfigurationSetEventDestination -> TestTree
requestCreateConfigurationSetEventDestination =
  req
    "CreateConfigurationSetEventDestination"
    "fixture/CreateConfigurationSetEventDestination.yaml"

requestGetAccountSendingEnabled :: GetAccountSendingEnabled -> TestTree
requestGetAccountSendingEnabled =
  req
    "GetAccountSendingEnabled"
    "fixture/GetAccountSendingEnabled.yaml"

requestCreateConfigurationSet :: CreateConfigurationSet -> TestTree
requestCreateConfigurationSet =
  req
    "CreateConfigurationSet"
    "fixture/CreateConfigurationSet.yaml"

requestDeleteConfigurationSet :: DeleteConfigurationSet -> TestTree
requestDeleteConfigurationSet =
  req
    "DeleteConfigurationSet"
    "fixture/DeleteConfigurationSet.yaml"

requestDeleteReceiptRule :: DeleteReceiptRule -> TestTree
requestDeleteReceiptRule =
  req
    "DeleteReceiptRule"
    "fixture/DeleteReceiptRule.yaml"

requestSetIdentityFeedbackForwardingEnabled :: SetIdentityFeedbackForwardingEnabled -> TestTree
requestSetIdentityFeedbackForwardingEnabled =
  req
    "SetIdentityFeedbackForwardingEnabled"
    "fixture/SetIdentityFeedbackForwardingEnabled.yaml"

requestCloneReceiptRuleSet :: CloneReceiptRuleSet -> TestTree
requestCloneReceiptRuleSet =
  req
    "CloneReceiptRuleSet"
    "fixture/CloneReceiptRuleSet.yaml"

requestUpdateConfigurationSetEventDestination :: UpdateConfigurationSetEventDestination -> TestTree
requestUpdateConfigurationSetEventDestination =
  req
    "UpdateConfigurationSetEventDestination"
    "fixture/UpdateConfigurationSetEventDestination.yaml"

requestUpdateReceiptRule :: UpdateReceiptRule -> TestTree
requestUpdateReceiptRule =
  req
    "UpdateReceiptRule"
    "fixture/UpdateReceiptRule.yaml"

requestDeleteConfigurationSetEventDestination :: DeleteConfigurationSetEventDestination -> TestTree
requestDeleteConfigurationSetEventDestination =
  req
    "DeleteConfigurationSetEventDestination"
    "fixture/DeleteConfigurationSetEventDestination.yaml"

requestSendEmail :: SendEmail -> TestTree
requestSendEmail =
  req
    "SendEmail"
    "fixture/SendEmail.yaml"

requestDeleteVerifiedEmailAddress :: DeleteVerifiedEmailAddress -> TestTree
requestDeleteVerifiedEmailAddress =
  req
    "DeleteVerifiedEmailAddress"
    "fixture/DeleteVerifiedEmailAddress.yaml"

requestVerifyEmailAddress :: VerifyEmailAddress -> TestTree
requestVerifyEmailAddress =
  req
    "VerifyEmailAddress"
    "fixture/VerifyEmailAddress.yaml"

requestCreateCustomVerificationEmailTemplate :: CreateCustomVerificationEmailTemplate -> TestTree
requestCreateCustomVerificationEmailTemplate =
  req
    "CreateCustomVerificationEmailTemplate"
    "fixture/CreateCustomVerificationEmailTemplate.yaml"

requestListIdentityPolicies :: ListIdentityPolicies -> TestTree
requestListIdentityPolicies =
  req
    "ListIdentityPolicies"
    "fixture/ListIdentityPolicies.yaml"

requestSetIdentityDkimEnabled :: SetIdentityDkimEnabled -> TestTree
requestSetIdentityDkimEnabled =
  req
    "SetIdentityDkimEnabled"
    "fixture/SetIdentityDkimEnabled.yaml"

requestUpdateConfigurationSetReputationMetricsEnabled :: UpdateConfigurationSetReputationMetricsEnabled -> TestTree
requestUpdateConfigurationSetReputationMetricsEnabled =
  req
    "UpdateConfigurationSetReputationMetricsEnabled"
    "fixture/UpdateConfigurationSetReputationMetricsEnabled.yaml"

requestListCustomVerificationEmailTemplates :: ListCustomVerificationEmailTemplates -> TestTree
requestListCustomVerificationEmailTemplates =
  req
    "ListCustomVerificationEmailTemplates"
    "fixture/ListCustomVerificationEmailTemplates.yaml"

requestDeleteIdentity :: DeleteIdentity -> TestTree
requestDeleteIdentity =
  req
    "DeleteIdentity"
    "fixture/DeleteIdentity.yaml"

requestDeleteCustomVerificationEmailTemplate :: DeleteCustomVerificationEmailTemplate -> TestTree
requestDeleteCustomVerificationEmailTemplate =
  req
    "DeleteCustomVerificationEmailTemplate"
    "fixture/DeleteCustomVerificationEmailTemplate.yaml"

requestPutIdentityPolicy :: PutIdentityPolicy -> TestTree
requestPutIdentityPolicy =
  req
    "PutIdentityPolicy"
    "fixture/PutIdentityPolicy.yaml"

requestUpdateCustomVerificationEmailTemplate :: UpdateCustomVerificationEmailTemplate -> TestTree
requestUpdateCustomVerificationEmailTemplate =
  req
    "UpdateCustomVerificationEmailTemplate"
    "fixture/UpdateCustomVerificationEmailTemplate.yaml"

requestDeleteConfigurationSetTrackingOptions :: DeleteConfigurationSetTrackingOptions -> TestTree
requestDeleteConfigurationSetTrackingOptions =
  req
    "DeleteConfigurationSetTrackingOptions"
    "fixture/DeleteConfigurationSetTrackingOptions.yaml"

requestSendBulkTemplatedEmail :: SendBulkTemplatedEmail -> TestTree
requestSendBulkTemplatedEmail =
  req
    "SendBulkTemplatedEmail"
    "fixture/SendBulkTemplatedEmail.yaml"

requestVerifyDomainDkim :: VerifyDomainDkim -> TestTree
requestVerifyDomainDkim =
  req
    "VerifyDomainDkim"
    "fixture/VerifyDomainDkim.yaml"

requestSendRawEmail :: SendRawEmail -> TestTree
requestSendRawEmail =
  req
    "SendRawEmail"
    "fixture/SendRawEmail.yaml"

requestTestRenderTemplate :: TestRenderTemplate -> TestTree
requestTestRenderTemplate =
  req
    "TestRenderTemplate"
    "fixture/TestRenderTemplate.yaml"

requestSendBounce :: SendBounce -> TestTree
requestSendBounce =
  req
    "SendBounce"
    "fixture/SendBounce.yaml"

requestUpdateConfigurationSetTrackingOptions :: UpdateConfigurationSetTrackingOptions -> TestTree
requestUpdateConfigurationSetTrackingOptions =
  req
    "UpdateConfigurationSetTrackingOptions"
    "fixture/UpdateConfigurationSetTrackingOptions.yaml"

requestSendTemplatedEmail :: SendTemplatedEmail -> TestTree
requestSendTemplatedEmail =
  req
    "SendTemplatedEmail"
    "fixture/SendTemplatedEmail.yaml"

requestListReceiptRuleSets :: ListReceiptRuleSets -> TestTree
requestListReceiptRuleSets =
  req
    "ListReceiptRuleSets"
    "fixture/ListReceiptRuleSets.yaml"

requestReorderReceiptRuleSet :: ReorderReceiptRuleSet -> TestTree
requestReorderReceiptRuleSet =
  req
    "ReorderReceiptRuleSet"
    "fixture/ReorderReceiptRuleSet.yaml"

requestListTemplates :: ListTemplates -> TestTree
requestListTemplates =
  req
    "ListTemplates"
    "fixture/ListTemplates.yaml"

requestDescribeActiveReceiptRuleSet :: DescribeActiveReceiptRuleSet -> TestTree
requestDescribeActiveReceiptRuleSet =
  req
    "DescribeActiveReceiptRuleSet"
    "fixture/DescribeActiveReceiptRuleSet.yaml"

requestCreateReceiptRule :: CreateReceiptRule -> TestTree
requestCreateReceiptRule =
  req
    "CreateReceiptRule"
    "fixture/CreateReceiptRule.yaml"

requestGetTemplate :: GetTemplate -> TestTree
requestGetTemplate =
  req
    "GetTemplate"
    "fixture/GetTemplate.yaml"

requestSetActiveReceiptRuleSet :: SetActiveReceiptRuleSet -> TestTree
requestSetActiveReceiptRuleSet =
  req
    "SetActiveReceiptRuleSet"
    "fixture/SetActiveReceiptRuleSet.yaml"

requestListConfigurationSets :: ListConfigurationSets -> TestTree
requestListConfigurationSets =
  req
    "ListConfigurationSets"
    "fixture/ListConfigurationSets.yaml"

requestSetIdentityMailFromDomain :: SetIdentityMailFromDomain -> TestTree
requestSetIdentityMailFromDomain =
  req
    "SetIdentityMailFromDomain"
    "fixture/SetIdentityMailFromDomain.yaml"

requestGetIdentityMailFromDomainAttributes :: GetIdentityMailFromDomainAttributes -> TestTree
requestGetIdentityMailFromDomainAttributes =
  req
    "GetIdentityMailFromDomainAttributes"
    "fixture/GetIdentityMailFromDomainAttributes.yaml"

requestSetIdentityNotificationTopic :: SetIdentityNotificationTopic -> TestTree
requestSetIdentityNotificationTopic =
  req
    "SetIdentityNotificationTopic"
    "fixture/SetIdentityNotificationTopic.yaml"

requestGetCustomVerificationEmailTemplate :: GetCustomVerificationEmailTemplate -> TestTree
requestGetCustomVerificationEmailTemplate =
  req
    "GetCustomVerificationEmailTemplate"
    "fixture/GetCustomVerificationEmailTemplate.yaml"

requestCreateReceiptFilter :: CreateReceiptFilter -> TestTree
requestCreateReceiptFilter =
  req
    "CreateReceiptFilter"
    "fixture/CreateReceiptFilter.yaml"

requestListVerifiedEmailAddresses :: ListVerifiedEmailAddresses -> TestTree
requestListVerifiedEmailAddresses =
  req
    "ListVerifiedEmailAddresses"
    "fixture/ListVerifiedEmailAddresses.yaml"

requestListReceiptFilters :: ListReceiptFilters -> TestTree
requestListReceiptFilters =
  req
    "ListReceiptFilters"
    "fixture/ListReceiptFilters.yaml"

requestDeleteReceiptFilter :: DeleteReceiptFilter -> TestTree
requestDeleteReceiptFilter =
  req
    "DeleteReceiptFilter"
    "fixture/DeleteReceiptFilter.yaml"

requestDescribeReceiptRuleSet :: DescribeReceiptRuleSet -> TestTree
requestDescribeReceiptRuleSet =
  req
    "DescribeReceiptRuleSet"
    "fixture/DescribeReceiptRuleSet.yaml"

requestVerifyEmailIdentity :: VerifyEmailIdentity -> TestTree
requestVerifyEmailIdentity =
  req
    "VerifyEmailIdentity"
    "fixture/VerifyEmailIdentity.yaml"

requestSendCustomVerificationEmail :: SendCustomVerificationEmail -> TestTree
requestSendCustomVerificationEmail =
  req
    "SendCustomVerificationEmail"
    "fixture/SendCustomVerificationEmail.yaml"

requestListIdentities :: ListIdentities -> TestTree
requestListIdentities =
  req
    "ListIdentities"
    "fixture/ListIdentities.yaml"

requestGetIdentityNotificationAttributes :: GetIdentityNotificationAttributes -> TestTree
requestGetIdentityNotificationAttributes =
  req
    "GetIdentityNotificationAttributes"
    "fixture/GetIdentityNotificationAttributes.yaml"

requestUpdateConfigurationSetSendingEnabled :: UpdateConfigurationSetSendingEnabled -> TestTree
requestUpdateConfigurationSetSendingEnabled =
  req
    "UpdateConfigurationSetSendingEnabled"
    "fixture/UpdateConfigurationSetSendingEnabled.yaml"

-- Responses

responseGetSendStatistics :: GetSendStatisticsResponse -> TestTree
responseGetSendStatistics =
  res
    "GetSendStatisticsResponse"
    "fixture/GetSendStatisticsResponse.proto"
    ses
    (Proxy :: Proxy GetSendStatistics)

responseDescribeConfigurationSet :: DescribeConfigurationSetResponse -> TestTree
responseDescribeConfigurationSet =
  res
    "DescribeConfigurationSetResponse"
    "fixture/DescribeConfigurationSetResponse.proto"
    ses
    (Proxy :: Proxy DescribeConfigurationSet)

responsePutConfigurationSetDeliveryOptions :: PutConfigurationSetDeliveryOptionsResponse -> TestTree
responsePutConfigurationSetDeliveryOptions =
  res
    "PutConfigurationSetDeliveryOptionsResponse"
    "fixture/PutConfigurationSetDeliveryOptionsResponse.proto"
    ses
    (Proxy :: Proxy PutConfigurationSetDeliveryOptions)

responseDeleteIdentityPolicy :: DeleteIdentityPolicyResponse -> TestTree
responseDeleteIdentityPolicy =
  res
    "DeleteIdentityPolicyResponse"
    "fixture/DeleteIdentityPolicyResponse.proto"
    ses
    (Proxy :: Proxy DeleteIdentityPolicy)

responseDescribeReceiptRule :: DescribeReceiptRuleResponse -> TestTree
responseDescribeReceiptRule =
  res
    "DescribeReceiptRuleResponse"
    "fixture/DescribeReceiptRuleResponse.proto"
    ses
    (Proxy :: Proxy DescribeReceiptRule)

responseCreateTemplate :: CreateTemplateResponse -> TestTree
responseCreateTemplate =
  res
    "CreateTemplateResponse"
    "fixture/CreateTemplateResponse.proto"
    ses
    (Proxy :: Proxy CreateTemplate)

responseGetIdentityDkimAttributes :: GetIdentityDkimAttributesResponse -> TestTree
responseGetIdentityDkimAttributes =
  res
    "GetIdentityDkimAttributesResponse"
    "fixture/GetIdentityDkimAttributesResponse.proto"
    ses
    (Proxy :: Proxy GetIdentityDkimAttributes)

responseCreateReceiptRuleSet :: CreateReceiptRuleSetResponse -> TestTree
responseCreateReceiptRuleSet =
  res
    "CreateReceiptRuleSetResponse"
    "fixture/CreateReceiptRuleSetResponse.proto"
    ses
    (Proxy :: Proxy CreateReceiptRuleSet)

responseGetSendQuota :: GetSendQuotaResponse -> TestTree
responseGetSendQuota =
  res
    "GetSendQuotaResponse"
    "fixture/GetSendQuotaResponse.proto"
    ses
    (Proxy :: Proxy GetSendQuota)

responseSetIdentityHeadersInNotificationsEnabled :: SetIdentityHeadersInNotificationsEnabledResponse -> TestTree
responseSetIdentityHeadersInNotificationsEnabled =
  res
    "SetIdentityHeadersInNotificationsEnabledResponse"
    "fixture/SetIdentityHeadersInNotificationsEnabledResponse.proto"
    ses
    (Proxy :: Proxy SetIdentityHeadersInNotificationsEnabled)

responseVerifyDomainIdentity :: VerifyDomainIdentityResponse -> TestTree
responseVerifyDomainIdentity =
  res
    "VerifyDomainIdentityResponse"
    "fixture/VerifyDomainIdentityResponse.proto"
    ses
    (Proxy :: Proxy VerifyDomainIdentity)

responseUpdateTemplate :: UpdateTemplateResponse -> TestTree
responseUpdateTemplate =
  res
    "UpdateTemplateResponse"
    "fixture/UpdateTemplateResponse.proto"
    ses
    (Proxy :: Proxy UpdateTemplate)

responseDeleteTemplate :: DeleteTemplateResponse -> TestTree
responseDeleteTemplate =
  res
    "DeleteTemplateResponse"
    "fixture/DeleteTemplateResponse.proto"
    ses
    (Proxy :: Proxy DeleteTemplate)

responseCreateConfigurationSetTrackingOptions :: CreateConfigurationSetTrackingOptionsResponse -> TestTree
responseCreateConfigurationSetTrackingOptions =
  res
    "CreateConfigurationSetTrackingOptionsResponse"
    "fixture/CreateConfigurationSetTrackingOptionsResponse.proto"
    ses
    (Proxy :: Proxy CreateConfigurationSetTrackingOptions)

responseDeleteReceiptRuleSet :: DeleteReceiptRuleSetResponse -> TestTree
responseDeleteReceiptRuleSet =
  res
    "DeleteReceiptRuleSetResponse"
    "fixture/DeleteReceiptRuleSetResponse.proto"
    ses
    (Proxy :: Proxy DeleteReceiptRuleSet)

responseSetReceiptRulePosition :: SetReceiptRulePositionResponse -> TestTree
responseSetReceiptRulePosition =
  res
    "SetReceiptRulePositionResponse"
    "fixture/SetReceiptRulePositionResponse.proto"
    ses
    (Proxy :: Proxy SetReceiptRulePosition)

responseUpdateAccountSendingEnabled :: UpdateAccountSendingEnabledResponse -> TestTree
responseUpdateAccountSendingEnabled =
  res
    "UpdateAccountSendingEnabledResponse"
    "fixture/UpdateAccountSendingEnabledResponse.proto"
    ses
    (Proxy :: Proxy UpdateAccountSendingEnabled)

responseGetIdentityVerificationAttributes :: GetIdentityVerificationAttributesResponse -> TestTree
responseGetIdentityVerificationAttributes =
  res
    "GetIdentityVerificationAttributesResponse"
    "fixture/GetIdentityVerificationAttributesResponse.proto"
    ses
    (Proxy :: Proxy GetIdentityVerificationAttributes)

responseGetIdentityPolicies :: GetIdentityPoliciesResponse -> TestTree
responseGetIdentityPolicies =
  res
    "GetIdentityPoliciesResponse"
    "fixture/GetIdentityPoliciesResponse.proto"
    ses
    (Proxy :: Proxy GetIdentityPolicies)

responseCreateConfigurationSetEventDestination :: CreateConfigurationSetEventDestinationResponse -> TestTree
responseCreateConfigurationSetEventDestination =
  res
    "CreateConfigurationSetEventDestinationResponse"
    "fixture/CreateConfigurationSetEventDestinationResponse.proto"
    ses
    (Proxy :: Proxy CreateConfigurationSetEventDestination)

responseGetAccountSendingEnabled :: GetAccountSendingEnabledResponse -> TestTree
responseGetAccountSendingEnabled =
  res
    "GetAccountSendingEnabledResponse"
    "fixture/GetAccountSendingEnabledResponse.proto"
    ses
    (Proxy :: Proxy GetAccountSendingEnabled)

responseCreateConfigurationSet :: CreateConfigurationSetResponse -> TestTree
responseCreateConfigurationSet =
  res
    "CreateConfigurationSetResponse"
    "fixture/CreateConfigurationSetResponse.proto"
    ses
    (Proxy :: Proxy CreateConfigurationSet)

responseDeleteConfigurationSet :: DeleteConfigurationSetResponse -> TestTree
responseDeleteConfigurationSet =
  res
    "DeleteConfigurationSetResponse"
    "fixture/DeleteConfigurationSetResponse.proto"
    ses
    (Proxy :: Proxy DeleteConfigurationSet)

responseDeleteReceiptRule :: DeleteReceiptRuleResponse -> TestTree
responseDeleteReceiptRule =
  res
    "DeleteReceiptRuleResponse"
    "fixture/DeleteReceiptRuleResponse.proto"
    ses
    (Proxy :: Proxy DeleteReceiptRule)

responseSetIdentityFeedbackForwardingEnabled :: SetIdentityFeedbackForwardingEnabledResponse -> TestTree
responseSetIdentityFeedbackForwardingEnabled =
  res
    "SetIdentityFeedbackForwardingEnabledResponse"
    "fixture/SetIdentityFeedbackForwardingEnabledResponse.proto"
    ses
    (Proxy :: Proxy SetIdentityFeedbackForwardingEnabled)

responseCloneReceiptRuleSet :: CloneReceiptRuleSetResponse -> TestTree
responseCloneReceiptRuleSet =
  res
    "CloneReceiptRuleSetResponse"
    "fixture/CloneReceiptRuleSetResponse.proto"
    ses
    (Proxy :: Proxy CloneReceiptRuleSet)

responseUpdateConfigurationSetEventDestination :: UpdateConfigurationSetEventDestinationResponse -> TestTree
responseUpdateConfigurationSetEventDestination =
  res
    "UpdateConfigurationSetEventDestinationResponse"
    "fixture/UpdateConfigurationSetEventDestinationResponse.proto"
    ses
    (Proxy :: Proxy UpdateConfigurationSetEventDestination)

responseUpdateReceiptRule :: UpdateReceiptRuleResponse -> TestTree
responseUpdateReceiptRule =
  res
    "UpdateReceiptRuleResponse"
    "fixture/UpdateReceiptRuleResponse.proto"
    ses
    (Proxy :: Proxy UpdateReceiptRule)

responseDeleteConfigurationSetEventDestination :: DeleteConfigurationSetEventDestinationResponse -> TestTree
responseDeleteConfigurationSetEventDestination =
  res
    "DeleteConfigurationSetEventDestinationResponse"
    "fixture/DeleteConfigurationSetEventDestinationResponse.proto"
    ses
    (Proxy :: Proxy DeleteConfigurationSetEventDestination)

responseSendEmail :: SendEmailResponse -> TestTree
responseSendEmail =
  res
    "SendEmailResponse"
    "fixture/SendEmailResponse.proto"
    ses
    (Proxy :: Proxy SendEmail)

responseDeleteVerifiedEmailAddress :: DeleteVerifiedEmailAddressResponse -> TestTree
responseDeleteVerifiedEmailAddress =
  res
    "DeleteVerifiedEmailAddressResponse"
    "fixture/DeleteVerifiedEmailAddressResponse.proto"
    ses
    (Proxy :: Proxy DeleteVerifiedEmailAddress)

responseVerifyEmailAddress :: VerifyEmailAddressResponse -> TestTree
responseVerifyEmailAddress =
  res
    "VerifyEmailAddressResponse"
    "fixture/VerifyEmailAddressResponse.proto"
    ses
    (Proxy :: Proxy VerifyEmailAddress)

responseCreateCustomVerificationEmailTemplate :: CreateCustomVerificationEmailTemplateResponse -> TestTree
responseCreateCustomVerificationEmailTemplate =
  res
    "CreateCustomVerificationEmailTemplateResponse"
    "fixture/CreateCustomVerificationEmailTemplateResponse.proto"
    ses
    (Proxy :: Proxy CreateCustomVerificationEmailTemplate)

responseListIdentityPolicies :: ListIdentityPoliciesResponse -> TestTree
responseListIdentityPolicies =
  res
    "ListIdentityPoliciesResponse"
    "fixture/ListIdentityPoliciesResponse.proto"
    ses
    (Proxy :: Proxy ListIdentityPolicies)

responseSetIdentityDkimEnabled :: SetIdentityDkimEnabledResponse -> TestTree
responseSetIdentityDkimEnabled =
  res
    "SetIdentityDkimEnabledResponse"
    "fixture/SetIdentityDkimEnabledResponse.proto"
    ses
    (Proxy :: Proxy SetIdentityDkimEnabled)

responseUpdateConfigurationSetReputationMetricsEnabled :: UpdateConfigurationSetReputationMetricsEnabledResponse -> TestTree
responseUpdateConfigurationSetReputationMetricsEnabled =
  res
    "UpdateConfigurationSetReputationMetricsEnabledResponse"
    "fixture/UpdateConfigurationSetReputationMetricsEnabledResponse.proto"
    ses
    (Proxy :: Proxy UpdateConfigurationSetReputationMetricsEnabled)

responseListCustomVerificationEmailTemplates :: ListCustomVerificationEmailTemplatesResponse -> TestTree
responseListCustomVerificationEmailTemplates =
  res
    "ListCustomVerificationEmailTemplatesResponse"
    "fixture/ListCustomVerificationEmailTemplatesResponse.proto"
    ses
    (Proxy :: Proxy ListCustomVerificationEmailTemplates)

responseDeleteIdentity :: DeleteIdentityResponse -> TestTree
responseDeleteIdentity =
  res
    "DeleteIdentityResponse"
    "fixture/DeleteIdentityResponse.proto"
    ses
    (Proxy :: Proxy DeleteIdentity)

responseDeleteCustomVerificationEmailTemplate :: DeleteCustomVerificationEmailTemplateResponse -> TestTree
responseDeleteCustomVerificationEmailTemplate =
  res
    "DeleteCustomVerificationEmailTemplateResponse"
    "fixture/DeleteCustomVerificationEmailTemplateResponse.proto"
    ses
    (Proxy :: Proxy DeleteCustomVerificationEmailTemplate)

responsePutIdentityPolicy :: PutIdentityPolicyResponse -> TestTree
responsePutIdentityPolicy =
  res
    "PutIdentityPolicyResponse"
    "fixture/PutIdentityPolicyResponse.proto"
    ses
    (Proxy :: Proxy PutIdentityPolicy)

responseUpdateCustomVerificationEmailTemplate :: UpdateCustomVerificationEmailTemplateResponse -> TestTree
responseUpdateCustomVerificationEmailTemplate =
  res
    "UpdateCustomVerificationEmailTemplateResponse"
    "fixture/UpdateCustomVerificationEmailTemplateResponse.proto"
    ses
    (Proxy :: Proxy UpdateCustomVerificationEmailTemplate)

responseDeleteConfigurationSetTrackingOptions :: DeleteConfigurationSetTrackingOptionsResponse -> TestTree
responseDeleteConfigurationSetTrackingOptions =
  res
    "DeleteConfigurationSetTrackingOptionsResponse"
    "fixture/DeleteConfigurationSetTrackingOptionsResponse.proto"
    ses
    (Proxy :: Proxy DeleteConfigurationSetTrackingOptions)

responseSendBulkTemplatedEmail :: SendBulkTemplatedEmailResponse -> TestTree
responseSendBulkTemplatedEmail =
  res
    "SendBulkTemplatedEmailResponse"
    "fixture/SendBulkTemplatedEmailResponse.proto"
    ses
    (Proxy :: Proxy SendBulkTemplatedEmail)

responseVerifyDomainDkim :: VerifyDomainDkimResponse -> TestTree
responseVerifyDomainDkim =
  res
    "VerifyDomainDkimResponse"
    "fixture/VerifyDomainDkimResponse.proto"
    ses
    (Proxy :: Proxy VerifyDomainDkim)

responseSendRawEmail :: SendRawEmailResponse -> TestTree
responseSendRawEmail =
  res
    "SendRawEmailResponse"
    "fixture/SendRawEmailResponse.proto"
    ses
    (Proxy :: Proxy SendRawEmail)

responseTestRenderTemplate :: TestRenderTemplateResponse -> TestTree
responseTestRenderTemplate =
  res
    "TestRenderTemplateResponse"
    "fixture/TestRenderTemplateResponse.proto"
    ses
    (Proxy :: Proxy TestRenderTemplate)

responseSendBounce :: SendBounceResponse -> TestTree
responseSendBounce =
  res
    "SendBounceResponse"
    "fixture/SendBounceResponse.proto"
    ses
    (Proxy :: Proxy SendBounce)

responseUpdateConfigurationSetTrackingOptions :: UpdateConfigurationSetTrackingOptionsResponse -> TestTree
responseUpdateConfigurationSetTrackingOptions =
  res
    "UpdateConfigurationSetTrackingOptionsResponse"
    "fixture/UpdateConfigurationSetTrackingOptionsResponse.proto"
    ses
    (Proxy :: Proxy UpdateConfigurationSetTrackingOptions)

responseSendTemplatedEmail :: SendTemplatedEmailResponse -> TestTree
responseSendTemplatedEmail =
  res
    "SendTemplatedEmailResponse"
    "fixture/SendTemplatedEmailResponse.proto"
    ses
    (Proxy :: Proxy SendTemplatedEmail)

responseListReceiptRuleSets :: ListReceiptRuleSetsResponse -> TestTree
responseListReceiptRuleSets =
  res
    "ListReceiptRuleSetsResponse"
    "fixture/ListReceiptRuleSetsResponse.proto"
    ses
    (Proxy :: Proxy ListReceiptRuleSets)

responseReorderReceiptRuleSet :: ReorderReceiptRuleSetResponse -> TestTree
responseReorderReceiptRuleSet =
  res
    "ReorderReceiptRuleSetResponse"
    "fixture/ReorderReceiptRuleSetResponse.proto"
    ses
    (Proxy :: Proxy ReorderReceiptRuleSet)

responseListTemplates :: ListTemplatesResponse -> TestTree
responseListTemplates =
  res
    "ListTemplatesResponse"
    "fixture/ListTemplatesResponse.proto"
    ses
    (Proxy :: Proxy ListTemplates)

responseDescribeActiveReceiptRuleSet :: DescribeActiveReceiptRuleSetResponse -> TestTree
responseDescribeActiveReceiptRuleSet =
  res
    "DescribeActiveReceiptRuleSetResponse"
    "fixture/DescribeActiveReceiptRuleSetResponse.proto"
    ses
    (Proxy :: Proxy DescribeActiveReceiptRuleSet)

responseCreateReceiptRule :: CreateReceiptRuleResponse -> TestTree
responseCreateReceiptRule =
  res
    "CreateReceiptRuleResponse"
    "fixture/CreateReceiptRuleResponse.proto"
    ses
    (Proxy :: Proxy CreateReceiptRule)

responseGetTemplate :: GetTemplateResponse -> TestTree
responseGetTemplate =
  res
    "GetTemplateResponse"
    "fixture/GetTemplateResponse.proto"
    ses
    (Proxy :: Proxy GetTemplate)

responseSetActiveReceiptRuleSet :: SetActiveReceiptRuleSetResponse -> TestTree
responseSetActiveReceiptRuleSet =
  res
    "SetActiveReceiptRuleSetResponse"
    "fixture/SetActiveReceiptRuleSetResponse.proto"
    ses
    (Proxy :: Proxy SetActiveReceiptRuleSet)

responseListConfigurationSets :: ListConfigurationSetsResponse -> TestTree
responseListConfigurationSets =
  res
    "ListConfigurationSetsResponse"
    "fixture/ListConfigurationSetsResponse.proto"
    ses
    (Proxy :: Proxy ListConfigurationSets)

responseSetIdentityMailFromDomain :: SetIdentityMailFromDomainResponse -> TestTree
responseSetIdentityMailFromDomain =
  res
    "SetIdentityMailFromDomainResponse"
    "fixture/SetIdentityMailFromDomainResponse.proto"
    ses
    (Proxy :: Proxy SetIdentityMailFromDomain)

responseGetIdentityMailFromDomainAttributes :: GetIdentityMailFromDomainAttributesResponse -> TestTree
responseGetIdentityMailFromDomainAttributes =
  res
    "GetIdentityMailFromDomainAttributesResponse"
    "fixture/GetIdentityMailFromDomainAttributesResponse.proto"
    ses
    (Proxy :: Proxy GetIdentityMailFromDomainAttributes)

responseSetIdentityNotificationTopic :: SetIdentityNotificationTopicResponse -> TestTree
responseSetIdentityNotificationTopic =
  res
    "SetIdentityNotificationTopicResponse"
    "fixture/SetIdentityNotificationTopicResponse.proto"
    ses
    (Proxy :: Proxy SetIdentityNotificationTopic)

responseGetCustomVerificationEmailTemplate :: GetCustomVerificationEmailTemplateResponse -> TestTree
responseGetCustomVerificationEmailTemplate =
  res
    "GetCustomVerificationEmailTemplateResponse"
    "fixture/GetCustomVerificationEmailTemplateResponse.proto"
    ses
    (Proxy :: Proxy GetCustomVerificationEmailTemplate)

responseCreateReceiptFilter :: CreateReceiptFilterResponse -> TestTree
responseCreateReceiptFilter =
  res
    "CreateReceiptFilterResponse"
    "fixture/CreateReceiptFilterResponse.proto"
    ses
    (Proxy :: Proxy CreateReceiptFilter)

responseListVerifiedEmailAddresses :: ListVerifiedEmailAddressesResponse -> TestTree
responseListVerifiedEmailAddresses =
  res
    "ListVerifiedEmailAddressesResponse"
    "fixture/ListVerifiedEmailAddressesResponse.proto"
    ses
    (Proxy :: Proxy ListVerifiedEmailAddresses)

responseListReceiptFilters :: ListReceiptFiltersResponse -> TestTree
responseListReceiptFilters =
  res
    "ListReceiptFiltersResponse"
    "fixture/ListReceiptFiltersResponse.proto"
    ses
    (Proxy :: Proxy ListReceiptFilters)

responseDeleteReceiptFilter :: DeleteReceiptFilterResponse -> TestTree
responseDeleteReceiptFilter =
  res
    "DeleteReceiptFilterResponse"
    "fixture/DeleteReceiptFilterResponse.proto"
    ses
    (Proxy :: Proxy DeleteReceiptFilter)

responseDescribeReceiptRuleSet :: DescribeReceiptRuleSetResponse -> TestTree
responseDescribeReceiptRuleSet =
  res
    "DescribeReceiptRuleSetResponse"
    "fixture/DescribeReceiptRuleSetResponse.proto"
    ses
    (Proxy :: Proxy DescribeReceiptRuleSet)

responseVerifyEmailIdentity :: VerifyEmailIdentityResponse -> TestTree
responseVerifyEmailIdentity =
  res
    "VerifyEmailIdentityResponse"
    "fixture/VerifyEmailIdentityResponse.proto"
    ses
    (Proxy :: Proxy VerifyEmailIdentity)

responseSendCustomVerificationEmail :: SendCustomVerificationEmailResponse -> TestTree
responseSendCustomVerificationEmail =
  res
    "SendCustomVerificationEmailResponse"
    "fixture/SendCustomVerificationEmailResponse.proto"
    ses
    (Proxy :: Proxy SendCustomVerificationEmail)

responseListIdentities :: ListIdentitiesResponse -> TestTree
responseListIdentities =
  res
    "ListIdentitiesResponse"
    "fixture/ListIdentitiesResponse.proto"
    ses
    (Proxy :: Proxy ListIdentities)

responseGetIdentityNotificationAttributes :: GetIdentityNotificationAttributesResponse -> TestTree
responseGetIdentityNotificationAttributes =
  res
    "GetIdentityNotificationAttributesResponse"
    "fixture/GetIdentityNotificationAttributesResponse.proto"
    ses
    (Proxy :: Proxy GetIdentityNotificationAttributes)

responseUpdateConfigurationSetSendingEnabled :: UpdateConfigurationSetSendingEnabledResponse -> TestTree
responseUpdateConfigurationSetSendingEnabled =
  res
    "UpdateConfigurationSetSendingEnabledResponse"
    "fixture/UpdateConfigurationSetSendingEnabledResponse.proto"
    ses
    (Proxy :: Proxy UpdateConfigurationSetSendingEnabled)
