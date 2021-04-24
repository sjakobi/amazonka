{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon Simple Email Service__
--
-- This document contains reference information for the <https://aws.amazon.com/ses/ Amazon Simple Email Service> (Amazon SES) API, version 2010-12-01. This document is best used in conjunction with the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html Amazon SES Developer Guide> .
module Network.AWS.SES
  ( -- * Service Configuration
    ses,

    -- * Errors
    -- $errors

    -- ** ConfigurationSetSendingPausedException
    _ConfigurationSetSendingPausedException,

    -- ** CustomVerificationEmailTemplateAlreadyExistsException
    _CustomVerificationEmailTemplateAlreadyExistsException,

    -- ** InvalidConfigurationSetException
    _InvalidConfigurationSetException,

    -- ** AccountSendingPausedException
    _AccountSendingPausedException,

    -- ** EventDestinationDoesNotExistException
    _EventDestinationDoesNotExistException,

    -- ** InvalidSNSDestinationException
    _InvalidSNSDestinationException,

    -- ** CustomVerificationEmailInvalidContentException
    _CustomVerificationEmailInvalidContentException,

    -- ** InvalidTemplateException
    _InvalidTemplateException,

    -- ** InvalidPolicyException
    _InvalidPolicyException,

    -- ** ConfigurationSetAlreadyExistsException
    _ConfigurationSetAlreadyExistsException,

    -- ** MailFromDomainNotVerifiedException
    _MailFromDomainNotVerifiedException,

    -- ** FromEmailAddressNotVerifiedException
    _FromEmailAddressNotVerifiedException,

    -- ** RuleSetDoesNotExistException
    _RuleSetDoesNotExistException,

    -- ** MessageRejected
    _MessageRejected,

    -- ** InvalidDeliveryOptionsException
    _InvalidDeliveryOptionsException,

    -- ** InvalidCloudWatchDestinationException
    _InvalidCloudWatchDestinationException,

    -- ** CannotDeleteException
    _CannotDeleteException,

    -- ** TemplateDoesNotExistException
    _TemplateDoesNotExistException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** InvalidTrackingOptionsException
    _InvalidTrackingOptionsException,

    -- ** InvalidSNSTopicException
    _InvalidSNSTopicException,

    -- ** EventDestinationAlreadyExistsException
    _EventDestinationAlreadyExistsException,

    -- ** AlreadyExistsException
    _AlreadyExistsException,

    -- ** InvalidS3ConfigurationException
    _InvalidS3ConfigurationException,

    -- ** ConfigurationSetDoesNotExistException
    _ConfigurationSetDoesNotExistException,

    -- ** TrackingOptionsAlreadyExistsException
    _TrackingOptionsAlreadyExistsException,

    -- ** TrackingOptionsDoesNotExistException
    _TrackingOptionsDoesNotExistException,

    -- ** InvalidFirehoseDestinationException
    _InvalidFirehoseDestinationException,

    -- ** InvalidLambdaFunctionException
    _InvalidLambdaFunctionException,

    -- ** MissingRenderingAttributeException
    _MissingRenderingAttributeException,

    -- ** InvalidRenderingParameterException
    _InvalidRenderingParameterException,

    -- ** CustomVerificationEmailTemplateDoesNotExistException
    _CustomVerificationEmailTemplateDoesNotExistException,

    -- ** ProductionAccessNotGrantedException
    _ProductionAccessNotGrantedException,

    -- ** RuleDoesNotExistException
    _RuleDoesNotExistException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetSendStatistics
    module Network.AWS.SES.GetSendStatistics,

    -- ** DescribeConfigurationSet
    module Network.AWS.SES.DescribeConfigurationSet,

    -- ** PutConfigurationSetDeliveryOptions
    module Network.AWS.SES.PutConfigurationSetDeliveryOptions,

    -- ** DeleteIdentityPolicy
    module Network.AWS.SES.DeleteIdentityPolicy,

    -- ** DescribeReceiptRule
    module Network.AWS.SES.DescribeReceiptRule,

    -- ** CreateTemplate
    module Network.AWS.SES.CreateTemplate,

    -- ** GetIdentityDkimAttributes
    module Network.AWS.SES.GetIdentityDkimAttributes,

    -- ** CreateReceiptRuleSet
    module Network.AWS.SES.CreateReceiptRuleSet,

    -- ** GetSendQuota
    module Network.AWS.SES.GetSendQuota,

    -- ** SetIdentityHeadersInNotificationsEnabled
    module Network.AWS.SES.SetIdentityHeadersInNotificationsEnabled,

    -- ** VerifyDomainIdentity
    module Network.AWS.SES.VerifyDomainIdentity,

    -- ** UpdateTemplate
    module Network.AWS.SES.UpdateTemplate,

    -- ** DeleteTemplate
    module Network.AWS.SES.DeleteTemplate,

    -- ** CreateConfigurationSetTrackingOptions
    module Network.AWS.SES.CreateConfigurationSetTrackingOptions,

    -- ** DeleteReceiptRuleSet
    module Network.AWS.SES.DeleteReceiptRuleSet,

    -- ** SetReceiptRulePosition
    module Network.AWS.SES.SetReceiptRulePosition,

    -- ** UpdateAccountSendingEnabled
    module Network.AWS.SES.UpdateAccountSendingEnabled,

    -- ** GetIdentityVerificationAttributes
    module Network.AWS.SES.GetIdentityVerificationAttributes,

    -- ** GetIdentityPolicies
    module Network.AWS.SES.GetIdentityPolicies,

    -- ** CreateConfigurationSetEventDestination
    module Network.AWS.SES.CreateConfigurationSetEventDestination,

    -- ** GetAccountSendingEnabled
    module Network.AWS.SES.GetAccountSendingEnabled,

    -- ** CreateConfigurationSet
    module Network.AWS.SES.CreateConfigurationSet,

    -- ** DeleteConfigurationSet
    module Network.AWS.SES.DeleteConfigurationSet,

    -- ** DeleteReceiptRule
    module Network.AWS.SES.DeleteReceiptRule,

    -- ** SetIdentityFeedbackForwardingEnabled
    module Network.AWS.SES.SetIdentityFeedbackForwardingEnabled,

    -- ** CloneReceiptRuleSet
    module Network.AWS.SES.CloneReceiptRuleSet,

    -- ** UpdateConfigurationSetEventDestination
    module Network.AWS.SES.UpdateConfigurationSetEventDestination,

    -- ** UpdateReceiptRule
    module Network.AWS.SES.UpdateReceiptRule,

    -- ** DeleteConfigurationSetEventDestination
    module Network.AWS.SES.DeleteConfigurationSetEventDestination,

    -- ** SendEmail
    module Network.AWS.SES.SendEmail,

    -- ** DeleteVerifiedEmailAddress
    module Network.AWS.SES.DeleteVerifiedEmailAddress,

    -- ** VerifyEmailAddress
    module Network.AWS.SES.VerifyEmailAddress,

    -- ** CreateCustomVerificationEmailTemplate
    module Network.AWS.SES.CreateCustomVerificationEmailTemplate,

    -- ** ListIdentityPolicies
    module Network.AWS.SES.ListIdentityPolicies,

    -- ** SetIdentityDkimEnabled
    module Network.AWS.SES.SetIdentityDkimEnabled,

    -- ** UpdateConfigurationSetReputationMetricsEnabled
    module Network.AWS.SES.UpdateConfigurationSetReputationMetricsEnabled,

    -- ** ListCustomVerificationEmailTemplates (Paginated)
    module Network.AWS.SES.ListCustomVerificationEmailTemplates,

    -- ** DeleteIdentity
    module Network.AWS.SES.DeleteIdentity,

    -- ** DeleteCustomVerificationEmailTemplate
    module Network.AWS.SES.DeleteCustomVerificationEmailTemplate,

    -- ** PutIdentityPolicy
    module Network.AWS.SES.PutIdentityPolicy,

    -- ** UpdateCustomVerificationEmailTemplate
    module Network.AWS.SES.UpdateCustomVerificationEmailTemplate,

    -- ** DeleteConfigurationSetTrackingOptions
    module Network.AWS.SES.DeleteConfigurationSetTrackingOptions,

    -- ** SendBulkTemplatedEmail
    module Network.AWS.SES.SendBulkTemplatedEmail,

    -- ** VerifyDomainDkim
    module Network.AWS.SES.VerifyDomainDkim,

    -- ** SendRawEmail
    module Network.AWS.SES.SendRawEmail,

    -- ** TestRenderTemplate
    module Network.AWS.SES.TestRenderTemplate,

    -- ** SendBounce
    module Network.AWS.SES.SendBounce,

    -- ** UpdateConfigurationSetTrackingOptions
    module Network.AWS.SES.UpdateConfigurationSetTrackingOptions,

    -- ** SendTemplatedEmail
    module Network.AWS.SES.SendTemplatedEmail,

    -- ** ListReceiptRuleSets (Paginated)
    module Network.AWS.SES.ListReceiptRuleSets,

    -- ** ReorderReceiptRuleSet
    module Network.AWS.SES.ReorderReceiptRuleSet,

    -- ** ListTemplates (Paginated)
    module Network.AWS.SES.ListTemplates,

    -- ** DescribeActiveReceiptRuleSet
    module Network.AWS.SES.DescribeActiveReceiptRuleSet,

    -- ** CreateReceiptRule
    module Network.AWS.SES.CreateReceiptRule,

    -- ** GetTemplate
    module Network.AWS.SES.GetTemplate,

    -- ** SetActiveReceiptRuleSet
    module Network.AWS.SES.SetActiveReceiptRuleSet,

    -- ** ListConfigurationSets (Paginated)
    module Network.AWS.SES.ListConfigurationSets,

    -- ** SetIdentityMailFromDomain
    module Network.AWS.SES.SetIdentityMailFromDomain,

    -- ** GetIdentityMailFromDomainAttributes
    module Network.AWS.SES.GetIdentityMailFromDomainAttributes,

    -- ** SetIdentityNotificationTopic
    module Network.AWS.SES.SetIdentityNotificationTopic,

    -- ** GetCustomVerificationEmailTemplate
    module Network.AWS.SES.GetCustomVerificationEmailTemplate,

    -- ** CreateReceiptFilter
    module Network.AWS.SES.CreateReceiptFilter,

    -- ** ListVerifiedEmailAddresses
    module Network.AWS.SES.ListVerifiedEmailAddresses,

    -- ** ListReceiptFilters
    module Network.AWS.SES.ListReceiptFilters,

    -- ** DeleteReceiptFilter
    module Network.AWS.SES.DeleteReceiptFilter,

    -- ** DescribeReceiptRuleSet
    module Network.AWS.SES.DescribeReceiptRuleSet,

    -- ** VerifyEmailIdentity
    module Network.AWS.SES.VerifyEmailIdentity,

    -- ** SendCustomVerificationEmail
    module Network.AWS.SES.SendCustomVerificationEmail,

    -- ** ListIdentities (Paginated)
    module Network.AWS.SES.ListIdentities,

    -- ** GetIdentityNotificationAttributes
    module Network.AWS.SES.GetIdentityNotificationAttributes,

    -- ** UpdateConfigurationSetSendingEnabled
    module Network.AWS.SES.UpdateConfigurationSetSendingEnabled,

    -- * Types

    -- ** BehaviorOnMXFailure
    BehaviorOnMXFailure (..),

    -- ** BounceType
    BounceType (..),

    -- ** BulkEmailStatus
    BulkEmailStatus (..),

    -- ** ConfigurationSetAttribute
    ConfigurationSetAttribute (..),

    -- ** CustomMailFromStatus
    CustomMailFromStatus (..),

    -- ** DimensionValueSource
    DimensionValueSource (..),

    -- ** DsnAction
    DsnAction (..),

    -- ** EventType
    EventType (..),

    -- ** IdentityType
    IdentityType (..),

    -- ** InvocationType
    InvocationType (..),

    -- ** NotificationType
    NotificationType (..),

    -- ** ReceiptFilterPolicy
    ReceiptFilterPolicy (..),

    -- ** SNSActionEncoding
    SNSActionEncoding (..),

    -- ** StopScope
    StopScope (..),

    -- ** TLSPolicy
    TLSPolicy (..),

    -- ** VerificationStatus
    VerificationStatus (..),

    -- ** AddHeaderAction
    AddHeaderAction,
    addHeaderAction,
    ahaHeaderName,
    ahaHeaderValue,

    -- ** Body
    Body,
    body,
    bHTML,
    bText,

    -- ** BounceAction
    BounceAction,
    bounceAction,
    baTopicARN,
    baStatusCode,
    baSmtpReplyCode,
    baMessage,
    baSender,

    -- ** BouncedRecipientInfo
    BouncedRecipientInfo,
    bouncedRecipientInfo,
    briRecipientARN,
    briRecipientDsnFields,
    briBounceType,
    briRecipient,

    -- ** BulkEmailDestination
    BulkEmailDestination,
    bulkEmailDestination,
    bedReplacementTags,
    bedReplacementTemplateData,
    bedDestination,

    -- ** BulkEmailDestinationStatus
    BulkEmailDestinationStatus,
    bulkEmailDestinationStatus,
    bedsStatus,
    bedsMessageId,
    bedsError,

    -- ** CloudWatchDestination
    CloudWatchDestination,
    cloudWatchDestination,
    cwdDimensionConfigurations,

    -- ** CloudWatchDimensionConfiguration
    CloudWatchDimensionConfiguration,
    cloudWatchDimensionConfiguration,
    cwdcDimensionName,
    cwdcDimensionValueSource,
    cwdcDefaultDimensionValue,

    -- ** ConfigurationSet
    ConfigurationSet,
    configurationSet,
    csName,

    -- ** Content
    Content,
    content,
    cCharset,
    cData,

    -- ** CustomVerificationEmailTemplate
    CustomVerificationEmailTemplate,
    customVerificationEmailTemplate,
    cvetTemplateName,
    cvetTemplateSubject,
    cvetFromEmailAddress,
    cvetSuccessRedirectionURL,
    cvetFailureRedirectionURL,

    -- ** DeliveryOptions
    DeliveryOptions,
    deliveryOptions,
    doTLSPolicy,

    -- ** Destination
    Destination,
    destination,
    dToAddresses,
    dCCAddresses,
    dBCCAddresses,

    -- ** EventDestination
    EventDestination,
    eventDestination,
    edCloudWatchDestination,
    edEnabled,
    edKinesisFirehoseDestination,
    edSNSDestination,
    edName,
    edMatchingEventTypes,

    -- ** ExtensionField
    ExtensionField,
    extensionField,
    efName,
    efValue,

    -- ** IdentityDkimAttributes
    IdentityDkimAttributes,
    identityDkimAttributes,
    idaDkimTokens,
    idaDkimEnabled,
    idaDkimVerificationStatus,

    -- ** IdentityMailFromDomainAttributes
    IdentityMailFromDomainAttributes,
    identityMailFromDomainAttributes,
    imfdaMailFromDomain,
    imfdaMailFromDomainStatus,
    imfdaBehaviorOnMXFailure,

    -- ** IdentityNotificationAttributes
    IdentityNotificationAttributes,
    identityNotificationAttributes,
    inaHeadersInComplaintNotificationsEnabled,
    inaHeadersInDeliveryNotificationsEnabled,
    inaHeadersInBounceNotificationsEnabled,
    inaBounceTopic,
    inaComplaintTopic,
    inaDeliveryTopic,
    inaForwardingEnabled,

    -- ** IdentityVerificationAttributes
    IdentityVerificationAttributes,
    identityVerificationAttributes,
    ivaVerificationToken,
    ivaVerificationStatus,

    -- ** KinesisFirehoseDestination
    KinesisFirehoseDestination,
    kinesisFirehoseDestination,
    kfdIAMRoleARN,
    kfdDeliveryStreamARN,

    -- ** LambdaAction
    LambdaAction,
    lambdaAction,
    laInvocationType,
    laTopicARN,
    laFunctionARN,

    -- ** Message
    Message,
    message,
    mSubject,
    mBody,

    -- ** MessageDsn
    MessageDsn,
    messageDsn,
    mdExtensionFields,
    mdArrivalDate,
    mdReportingMta,

    -- ** MessageTag
    MessageTag,
    messageTag,
    mtName,
    mtValue,

    -- ** RawMessage
    RawMessage,
    rawMessage,
    rmData,

    -- ** ReceiptAction
    ReceiptAction,
    receiptAction,
    raLambdaAction,
    raStopAction,
    raS3Action,
    raBounceAction,
    raWorkmailAction,
    raAddHeaderAction,
    raSNSAction,

    -- ** ReceiptFilter
    ReceiptFilter,
    receiptFilter,
    rfName,
    rfIPFilter,

    -- ** ReceiptIPFilter
    ReceiptIPFilter,
    receiptIPFilter,
    rifPolicy,
    rifCidr,

    -- ** ReceiptRule
    ReceiptRule,
    receiptRule,
    rrTLSPolicy,
    rrEnabled,
    rrActions,
    rrRecipients,
    rrScanEnabled,
    rrName,

    -- ** ReceiptRuleSetMetadata
    ReceiptRuleSetMetadata,
    receiptRuleSetMetadata,
    rrsmCreatedTimestamp,
    rrsmName,

    -- ** RecipientDsnFields
    RecipientDsnFields,
    recipientDsnFields,
    rdfRemoteMta,
    rdfLastAttemptDate,
    rdfExtensionFields,
    rdfDiagnosticCode,
    rdfFinalRecipient,
    rdfAction,
    rdfStatus,

    -- ** ReputationOptions
    ReputationOptions,
    reputationOptions,
    roReputationMetricsEnabled,
    roLastFreshStart,
    roSendingEnabled,

    -- ** S3Action
    S3Action,
    s3Action,
    sObjectKeyPrefix,
    sKMSKeyARN,
    sTopicARN,
    sBucketName,

    -- ** SNSAction
    SNSAction,
    snsAction,
    snsaEncoding,
    snsaTopicARN,

    -- ** SNSDestination
    SNSDestination,
    snsDestination,
    sdTopicARN,

    -- ** SendDataPoint
    SendDataPoint,
    sendDataPoint,
    sdpBounces,
    sdpComplaints,
    sdpRejects,
    sdpTimestamp,
    sdpDeliveryAttempts,

    -- ** StopAction
    StopAction,
    stopAction,
    saTopicARN,
    saScope,

    -- ** Template
    Template,
    template,
    tTextPart,
    tSubjectPart,
    tHTMLPart,
    tTemplateName,

    -- ** TemplateMetadata
    TemplateMetadata,
    templateMetadata,
    tmCreatedTimestamp,
    tmName,

    -- ** TrackingOptions
    TrackingOptions,
    trackingOptions,
    toCustomRedirectDomain,

    -- ** WorkmailAction
    WorkmailAction,
    workmailAction,
    waTopicARN,
    waOrganizationARN,
  )
where

import Network.AWS.SES.CloneReceiptRuleSet
import Network.AWS.SES.CreateConfigurationSet
import Network.AWS.SES.CreateConfigurationSetEventDestination
import Network.AWS.SES.CreateConfigurationSetTrackingOptions
import Network.AWS.SES.CreateCustomVerificationEmailTemplate
import Network.AWS.SES.CreateReceiptFilter
import Network.AWS.SES.CreateReceiptRule
import Network.AWS.SES.CreateReceiptRuleSet
import Network.AWS.SES.CreateTemplate
import Network.AWS.SES.DeleteConfigurationSet
import Network.AWS.SES.DeleteConfigurationSetEventDestination
import Network.AWS.SES.DeleteConfigurationSetTrackingOptions
import Network.AWS.SES.DeleteCustomVerificationEmailTemplate
import Network.AWS.SES.DeleteIdentity
import Network.AWS.SES.DeleteIdentityPolicy
import Network.AWS.SES.DeleteReceiptFilter
import Network.AWS.SES.DeleteReceiptRule
import Network.AWS.SES.DeleteReceiptRuleSet
import Network.AWS.SES.DeleteTemplate
import Network.AWS.SES.DeleteVerifiedEmailAddress
import Network.AWS.SES.DescribeActiveReceiptRuleSet
import Network.AWS.SES.DescribeConfigurationSet
import Network.AWS.SES.DescribeReceiptRule
import Network.AWS.SES.DescribeReceiptRuleSet
import Network.AWS.SES.GetAccountSendingEnabled
import Network.AWS.SES.GetCustomVerificationEmailTemplate
import Network.AWS.SES.GetIdentityDkimAttributes
import Network.AWS.SES.GetIdentityMailFromDomainAttributes
import Network.AWS.SES.GetIdentityNotificationAttributes
import Network.AWS.SES.GetIdentityPolicies
import Network.AWS.SES.GetIdentityVerificationAttributes
import Network.AWS.SES.GetSendQuota
import Network.AWS.SES.GetSendStatistics
import Network.AWS.SES.GetTemplate
import Network.AWS.SES.ListConfigurationSets
import Network.AWS.SES.ListCustomVerificationEmailTemplates
import Network.AWS.SES.ListIdentities
import Network.AWS.SES.ListIdentityPolicies
import Network.AWS.SES.ListReceiptFilters
import Network.AWS.SES.ListReceiptRuleSets
import Network.AWS.SES.ListTemplates
import Network.AWS.SES.ListVerifiedEmailAddresses
import Network.AWS.SES.PutConfigurationSetDeliveryOptions
import Network.AWS.SES.PutIdentityPolicy
import Network.AWS.SES.ReorderReceiptRuleSet
import Network.AWS.SES.SendBounce
import Network.AWS.SES.SendBulkTemplatedEmail
import Network.AWS.SES.SendCustomVerificationEmail
import Network.AWS.SES.SendEmail
import Network.AWS.SES.SendRawEmail
import Network.AWS.SES.SendTemplatedEmail
import Network.AWS.SES.SetActiveReceiptRuleSet
import Network.AWS.SES.SetIdentityDkimEnabled
import Network.AWS.SES.SetIdentityFeedbackForwardingEnabled
import Network.AWS.SES.SetIdentityHeadersInNotificationsEnabled
import Network.AWS.SES.SetIdentityMailFromDomain
import Network.AWS.SES.SetIdentityNotificationTopic
import Network.AWS.SES.SetReceiptRulePosition
import Network.AWS.SES.TestRenderTemplate
import Network.AWS.SES.Types
import Network.AWS.SES.UpdateAccountSendingEnabled
import Network.AWS.SES.UpdateConfigurationSetEventDestination
import Network.AWS.SES.UpdateConfigurationSetReputationMetricsEnabled
import Network.AWS.SES.UpdateConfigurationSetSendingEnabled
import Network.AWS.SES.UpdateConfigurationSetTrackingOptions
import Network.AWS.SES.UpdateCustomVerificationEmailTemplate
import Network.AWS.SES.UpdateReceiptRule
import Network.AWS.SES.UpdateTemplate
import Network.AWS.SES.VerifyDomainDkim
import Network.AWS.SES.VerifyDomainIdentity
import Network.AWS.SES.VerifyEmailAddress
import Network.AWS.SES.VerifyEmailIdentity
import Network.AWS.SES.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'SES'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
