{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types
  ( -- * Service Configuration
    cognitoIdentityProvider,

    -- * Errors
    _PasswordResetRequiredException,
    _UsernameExistsException,
    _CodeDeliveryFailureException,
    _ScopeDoesNotExistException,
    _CodeMismatchException,
    _InternalErrorException,
    _EnableSoftwareTokenMFAException,
    _UserNotConfirmedException,
    _ExpiredCodeException,
    _TooManyFailedAttemptsException,
    _UnexpectedLambdaException,
    _UserNotFoundException,
    _InvalidLambdaResponseException,
    _ConcurrentModificationException,
    _UserLambdaValidationException,
    _SoftwareTokenMFANotFoundException,
    _PreconditionNotMetException,
    _UserPoolTaggingException,
    _InvalidSmsRoleTrustRelationshipException,
    _InvalidParameterException,
    _UnsupportedUserStateException,
    _LimitExceededException,
    _InvalidPasswordException,
    _MFAMethodNotFoundException,
    _AliasExistsException,
    _DuplicateProviderException,
    _UserImportInProgressException,
    _ResourceNotFoundException,
    _InvalidSmsRoleAccessPolicyException,
    _InvalidUserPoolConfigurationException,
    _InvalidOAuthFlowException,
    _GroupExistsException,
    _UnsupportedIdentityProviderException,
    _NotAuthorizedException,
    _TooManyRequestsException,
    _InvalidEmailRoleAccessPolicyException,
    _UserPoolAddOnNotEnabledException,

    -- * AccountTakeoverEventActionType
    AccountTakeoverEventActionType (..),

    -- * AdvancedSecurityModeType
    AdvancedSecurityModeType (..),

    -- * AliasAttributeType
    AliasAttributeType (..),

    -- * AttributeDataType
    AttributeDataType (..),

    -- * AuthFlowType
    AuthFlowType (..),

    -- * ChallengeName
    ChallengeName (..),

    -- * ChallengeNameType
    ChallengeNameType (..),

    -- * ChallengeResponse
    ChallengeResponse (..),

    -- * CompromisedCredentialsEventActionType
    CompromisedCredentialsEventActionType (..),

    -- * CustomEmailSenderLambdaVersionType
    CustomEmailSenderLambdaVersionType (..),

    -- * CustomSMSSenderLambdaVersionType
    CustomSMSSenderLambdaVersionType (..),

    -- * DefaultEmailOptionType
    DefaultEmailOptionType (..),

    -- * DeliveryMediumType
    DeliveryMediumType (..),

    -- * DeviceRememberedStatusType
    DeviceRememberedStatusType (..),

    -- * DomainStatusType
    DomainStatusType (..),

    -- * EmailSendingAccountType
    EmailSendingAccountType (..),

    -- * EventFilterType
    EventFilterType (..),

    -- * EventResponseType
    EventResponseType (..),

    -- * EventType
    EventType (..),

    -- * ExplicitAuthFlowsType
    ExplicitAuthFlowsType (..),

    -- * FeedbackValueType
    FeedbackValueType (..),

    -- * IdentityProviderTypeType
    IdentityProviderTypeType (..),

    -- * MessageActionType
    MessageActionType (..),

    -- * OAuthFlowType
    OAuthFlowType (..),

    -- * PreventUserExistenceErrorTypes
    PreventUserExistenceErrorTypes (..),

    -- * RecoveryOptionNameType
    RecoveryOptionNameType (..),

    -- * RiskDecisionType
    RiskDecisionType (..),

    -- * RiskLevelType
    RiskLevelType (..),

    -- * StatusType
    StatusType (..),

    -- * TimeUnitsType
    TimeUnitsType (..),

    -- * UserImportJobStatusType
    UserImportJobStatusType (..),

    -- * UserPoolMFAType
    UserPoolMFAType (..),

    -- * UserStatusType
    UserStatusType (..),

    -- * UsernameAttributeType
    UsernameAttributeType (..),

    -- * VerifiedAttributeType
    VerifiedAttributeType (..),

    -- * VerifySoftwareTokenResponseType
    VerifySoftwareTokenResponseType (..),

    -- * AccountRecoverySettingType
    AccountRecoverySettingType (..),
    accountRecoverySettingType,
    arstRecoveryMechanisms,

    -- * AccountTakeoverActionType
    AccountTakeoverActionType (..),
    accountTakeoverActionType,
    atatNotify,
    atatEventAction,

    -- * AccountTakeoverActionsType
    AccountTakeoverActionsType (..),
    accountTakeoverActionsType,
    atatLowAction,
    atatMediumAction,
    atatHighAction,

    -- * AccountTakeoverRiskConfigurationType
    AccountTakeoverRiskConfigurationType (..),
    accountTakeoverRiskConfigurationType,
    atrctNotifyConfiguration,
    atrctActions,

    -- * AdminCreateUserConfigType
    AdminCreateUserConfigType (..),
    adminCreateUserConfigType,
    acuctAllowAdminCreateUserOnly,
    acuctInviteMessageTemplate,
    acuctUnusedAccountValidityDays,

    -- * AnalyticsConfigurationType
    AnalyticsConfigurationType (..),
    analyticsConfigurationType,
    actApplicationARN,
    actApplicationId,
    actRoleARN,
    actUserDataShared,
    actExternalId,

    -- * AnalyticsMetadataType
    AnalyticsMetadataType (..),
    analyticsMetadataType,
    amtAnalyticsEndpointId,

    -- * AttributeType
    AttributeType (..),
    attributeType,
    atValue,
    atName,

    -- * AuthEventType
    AuthEventType (..),
    authEventType,
    aetEventType,
    aetEventId,
    aetChallengeResponses,
    aetEventContextData,
    aetCreationDate,
    aetEventRisk,
    aetEventResponse,
    aetEventFeedback,

    -- * AuthenticationResultType
    AuthenticationResultType (..),
    authenticationResultType,
    artExpiresIn,
    artTokenType,
    artAccessToken,
    artNewDeviceMetadata,
    artIdToken,
    artRefreshToken,

    -- * ChallengeResponseType
    ChallengeResponseType (..),
    challengeResponseType,
    crtChallengeResponse,
    crtChallengeName,

    -- * CodeDeliveryDetailsType
    CodeDeliveryDetailsType (..),
    codeDeliveryDetailsType,
    cddtDeliveryMedium,
    cddtAttributeName,
    cddtDestination,

    -- * CompromisedCredentialsActionsType
    CompromisedCredentialsActionsType (..),
    compromisedCredentialsActionsType,
    ccatEventAction,

    -- * CompromisedCredentialsRiskConfigurationType
    CompromisedCredentialsRiskConfigurationType (..),
    compromisedCredentialsRiskConfigurationType,
    ccrctEventFilter,
    ccrctActions,

    -- * ContextDataType
    ContextDataType (..),
    contextDataType,
    cdtEncodedData,
    cdtIPAddress,
    cdtServerName,
    cdtServerPath,
    cdtHTTPHeaders,

    -- * CustomDomainConfigType
    CustomDomainConfigType (..),
    customDomainConfigType,
    cdctCertificateARN,

    -- * CustomEmailLambdaVersionConfigType
    CustomEmailLambdaVersionConfigType (..),
    customEmailLambdaVersionConfigType,
    celvctLambdaVersion,
    celvctLambdaARN,

    -- * CustomSMSLambdaVersionConfigType
    CustomSMSLambdaVersionConfigType (..),
    customSMSLambdaVersionConfigType,
    csmslvctLambdaVersion,
    csmslvctLambdaARN,

    -- * DeviceConfigurationType
    DeviceConfigurationType (..),
    deviceConfigurationType,
    dctChallengeRequiredOnNewDevice,
    dctDeviceOnlyRememberedOnUserPrompt,

    -- * DeviceSecretVerifierConfigType
    DeviceSecretVerifierConfigType (..),
    deviceSecretVerifierConfigType,
    dsvctPasswordVerifier,
    dsvctSalt,

    -- * DeviceType
    DeviceType (..),
    deviceType,
    dtDeviceLastModifiedDate,
    dtDeviceKey,
    dtDeviceLastAuthenticatedDate,
    dtDeviceCreateDate,
    dtDeviceAttributes,

    -- * DomainDescriptionType
    DomainDescriptionType (..),
    domainDescriptionType,
    ddtStatus,
    ddtCustomDomainConfig,
    ddtAWSAccountId,
    ddtS3Bucket,
    ddtUserPoolId,
    ddtDomain,
    ddtCloudFrontDistribution,
    ddtVersion,

    -- * EmailConfigurationType
    EmailConfigurationType (..),
    emailConfigurationType,
    ectEmailSendingAccount,
    ectReplyToEmailAddress,
    ectFrom,
    ectSourceARN,
    ectConfigurationSet,

    -- * EventContextDataType
    EventContextDataType (..),
    eventContextDataType,
    ecdtIPAddress,
    ecdtCity,
    ecdtDeviceName,
    ecdtTimezone,
    ecdtCountry,

    -- * EventFeedbackType
    EventFeedbackType (..),
    eventFeedbackType,
    eftFeedbackDate,
    eftFeedbackValue,
    eftProvider,

    -- * EventRiskType
    EventRiskType (..),
    eventRiskType,
    ertCompromisedCredentialsDetected,
    ertRiskDecision,
    ertRiskLevel,

    -- * GroupType
    GroupType (..),
    groupType,
    gtLastModifiedDate,
    gtRoleARN,
    gtGroupName,
    gtUserPoolId,
    gtCreationDate,
    gtDescription,
    gtPrecedence,

    -- * HTTPHeader
    HTTPHeader (..),
    hTTPHeader,
    httphHeaderName,
    httphHeaderValue,

    -- * IdentityProviderType
    IdentityProviderType (..),
    identityProviderType,
    iptLastModifiedDate,
    iptProviderType,
    iptProviderName,
    iptProviderDetails,
    iptUserPoolId,
    iptCreationDate,
    iptIdpIdentifiers,
    iptAttributeMapping,

    -- * LambdaConfigType
    LambdaConfigType (..),
    lambdaConfigType,
    lctCustomEmailSender,
    lctPreSignUp,
    lctDefineAuthChallenge,
    lctPostAuthentication,
    lctCustomSMSSender,
    lctCreateAuthChallenge,
    lctPostConfirmation,
    lctPreAuthentication,
    lctKMSKeyId,
    lctVerifyAuthChallengeResponse,
    lctCustomMessage,
    lctUserMigration,
    lctPreTokenGeneration,

    -- * MFAOptionType
    MFAOptionType (..),
    mfaOptionType,
    motDeliveryMedium,
    motAttributeName,

    -- * MessageTemplateType
    MessageTemplateType (..),
    messageTemplateType,
    mttEmailSubject,
    mttEmailMessage,
    mttSMSMessage,

    -- * NewDeviceMetadataType
    NewDeviceMetadataType (..),
    newDeviceMetadataType,
    ndmtDeviceKey,
    ndmtDeviceGroupKey,

    -- * NotifyConfigurationType
    NotifyConfigurationType (..),
    notifyConfigurationType,
    nctMFAEmail,
    nctBlockEmail,
    nctReplyTo,
    nctFrom,
    nctNoActionEmail,
    nctSourceARN,

    -- * NotifyEmailType
    NotifyEmailType (..),
    notifyEmailType,
    netHTMLBody,
    netTextBody,
    netSubject,

    -- * NumberAttributeConstraintsType
    NumberAttributeConstraintsType (..),
    numberAttributeConstraintsType,
    nactMaxValue,
    nactMinValue,

    -- * PasswordPolicyType
    PasswordPolicyType (..),
    passwordPolicyType,
    pptTemporaryPasswordValidityDays,
    pptRequireUppercase,
    pptMinimumLength,
    pptRequireSymbols,
    pptRequireNumbers,
    pptRequireLowercase,

    -- * ProviderDescription
    ProviderDescription (..),
    providerDescription,
    pdLastModifiedDate,
    pdProviderType,
    pdProviderName,
    pdCreationDate,

    -- * ProviderUserIdentifierType
    ProviderUserIdentifierType (..),
    providerUserIdentifierType,
    puitProviderName,
    puitProviderAttributeName,
    puitProviderAttributeValue,

    -- * RecoveryOptionType
    RecoveryOptionType (..),
    recoveryOptionType,
    rotPriority,
    rotName,

    -- * ResourceServerScopeType
    ResourceServerScopeType (..),
    resourceServerScopeType,
    rsstScopeName,
    rsstScopeDescription,

    -- * ResourceServerType
    ResourceServerType (..),
    resourceServerType,
    rstScopes,
    rstIdentifier,
    rstUserPoolId,
    rstName,

    -- * RiskConfigurationType
    RiskConfigurationType (..),
    riskConfigurationType,
    rctAccountTakeoverRiskConfiguration,
    rctLastModifiedDate,
    rctClientId,
    rctRiskExceptionConfiguration,
    rctUserPoolId,
    rctCompromisedCredentialsRiskConfiguration,

    -- * RiskExceptionConfigurationType
    RiskExceptionConfigurationType (..),
    riskExceptionConfigurationType,
    rectSkippedIPRangeList,
    rectBlockedIPRangeList,

    -- * SMSMFASettingsType
    SMSMFASettingsType (..),
    sMSMFASettingsType,
    smsmstEnabled,
    smsmstPreferredMFA,

    -- * SchemaAttributeType
    SchemaAttributeType (..),
    schemaAttributeType,
    satAttributeDataType,
    satRequired,
    satNumberAttributeConstraints,
    satDeveloperOnlyAttribute,
    satStringAttributeConstraints,
    satName,
    satMutable,

    -- * SmsConfigurationType
    SmsConfigurationType (..),
    smsConfigurationType,
    sctExternalId,
    sctSNSCallerARN,

    -- * SmsMFAConfigType
    SmsMFAConfigType (..),
    smsMFAConfigType,
    smctSmsConfiguration,
    smctSmsAuthenticationMessage,

    -- * SoftwareTokenMFAConfigType
    SoftwareTokenMFAConfigType (..),
    softwareTokenMFAConfigType,
    stmctEnabled,

    -- * SoftwareTokenMFASettingsType
    SoftwareTokenMFASettingsType (..),
    softwareTokenMFASettingsType,
    stmstEnabled,
    stmstPreferredMFA,

    -- * StringAttributeConstraintsType
    StringAttributeConstraintsType (..),
    stringAttributeConstraintsType,
    sactMinLength,
    sactMaxLength,

    -- * TokenValidityUnitsType
    TokenValidityUnitsType (..),
    tokenValidityUnitsType,
    tvutAccessToken,
    tvutIdToken,
    tvutRefreshToken,

    -- * UICustomizationType
    UICustomizationType (..),
    uICustomizationType,
    uictLastModifiedDate,
    uictClientId,
    uictCSSVersion,
    uictUserPoolId,
    uictCreationDate,
    uictImageURL,
    uictCSS,

    -- * UserContextDataType
    UserContextDataType (..),
    userContextDataType,
    ucdtEncodedData,

    -- * UserImportJobType
    UserImportJobType (..),
    userImportJobType,
    uijtCompletionMessage,
    uijtStatus,
    uijtStartDate,
    uijtUserPoolId,
    uijtCreationDate,
    uijtSkippedUsers,
    uijtFailedUsers,
    uijtImportedUsers,
    uijtCloudWatchLogsRoleARN,
    uijtPreSignedURL,
    uijtCompletionDate,
    uijtJobName,
    uijtJobId,

    -- * UserPoolAddOnsType
    UserPoolAddOnsType (..),
    userPoolAddOnsType,
    upaotAdvancedSecurityMode,

    -- * UserPoolClientDescription
    UserPoolClientDescription (..),
    userPoolClientDescription,
    upcdClientId,
    upcdClientName,
    upcdUserPoolId,

    -- * UserPoolClientType
    UserPoolClientType (..),
    userPoolClientType,
    upctLastModifiedDate,
    upctClientSecret,
    upctRefreshTokenValidity,
    upctClientId,
    upctIdTokenValidity,
    upctAllowedOAuthScopes,
    upctClientName,
    upctAnalyticsConfiguration,
    upctUserPoolId,
    upctReadAttributes,
    upctCreationDate,
    upctLogoutURLs,
    upctWriteAttributes,
    upctSupportedIdentityProviders,
    upctExplicitAuthFlows,
    upctDefaultRedirectURI,
    upctTokenValidityUnits,
    upctCallbackURLs,
    upctAllowedOAuthFlows,
    upctAccessTokenValidity,
    upctPreventUserExistenceErrors,
    upctAllowedOAuthFlowsUserPoolClient,

    -- * UserPoolDescriptionType
    UserPoolDescriptionType (..),
    userPoolDescriptionType,
    updtLastModifiedDate,
    updtStatus,
    updtId,
    updtCreationDate,
    updtLambdaConfig,
    updtName,

    -- * UserPoolPolicyType
    UserPoolPolicyType (..),
    userPoolPolicyType,
    upptPasswordPolicy,

    -- * UserPoolType
    UserPoolType (..),
    userPoolType,
    uptLastModifiedDate,
    uptUserPoolTags,
    uptStatus,
    uptUsernameAttributes,
    uptEmailVerificationSubject,
    uptAutoVerifiedAttributes,
    uptPolicies,
    uptCustomDomain,
    uptDomain,
    uptAdminCreateUserConfig,
    uptDeviceConfiguration,
    uptARN,
    uptId,
    uptCreationDate,
    uptSmsConfiguration,
    uptLambdaConfig,
    uptEstimatedNumberOfUsers,
    uptSmsVerificationMessage,
    uptName,
    uptAccountRecoverySetting,
    uptEmailConfiguration,
    uptEmailConfigurationFailure,
    uptAliasAttributes,
    uptEmailVerificationMessage,
    uptUserPoolAddOns,
    uptUsernameConfiguration,
    uptSmsAuthenticationMessage,
    uptSchemaAttributes,
    uptSmsConfigurationFailure,
    uptMFAConfiguration,
    uptVerificationMessageTemplate,

    -- * UserType
    UserType (..),
    userType,
    utUserCreateDate,
    utUserLastModifiedDate,
    utEnabled,
    utAttributes,
    utUsername,
    utUserStatus,
    utMFAOptions,

    -- * UsernameConfigurationType
    UsernameConfigurationType (..),
    usernameConfigurationType,
    uctCaseSensitive,

    -- * VerificationMessageTemplateType
    VerificationMessageTemplateType (..),
    verificationMessageTemplateType,
    vmttDefaultEmailOption,
    vmttEmailSubjectByLink,
    vmttEmailSubject,
    vmttEmailMessage,
    vmttEmailMessageByLink,
    vmttSmsMessage,
  )
where

import Network.AWS.CognitoIdentityProvider.Types.AccountRecoverySettingType
import Network.AWS.CognitoIdentityProvider.Types.AccountTakeoverActionType
import Network.AWS.CognitoIdentityProvider.Types.AccountTakeoverActionsType
import Network.AWS.CognitoIdentityProvider.Types.AccountTakeoverEventActionType
import Network.AWS.CognitoIdentityProvider.Types.AccountTakeoverRiskConfigurationType
import Network.AWS.CognitoIdentityProvider.Types.AdminCreateUserConfigType
import Network.AWS.CognitoIdentityProvider.Types.AdvancedSecurityModeType
import Network.AWS.CognitoIdentityProvider.Types.AliasAttributeType
import Network.AWS.CognitoIdentityProvider.Types.AnalyticsConfigurationType
import Network.AWS.CognitoIdentityProvider.Types.AnalyticsMetadataType
import Network.AWS.CognitoIdentityProvider.Types.AttributeDataType
import Network.AWS.CognitoIdentityProvider.Types.AttributeType
import Network.AWS.CognitoIdentityProvider.Types.AuthEventType
import Network.AWS.CognitoIdentityProvider.Types.AuthFlowType
import Network.AWS.CognitoIdentityProvider.Types.AuthenticationResultType
import Network.AWS.CognitoIdentityProvider.Types.ChallengeName
import Network.AWS.CognitoIdentityProvider.Types.ChallengeNameType
import Network.AWS.CognitoIdentityProvider.Types.ChallengeResponse
import Network.AWS.CognitoIdentityProvider.Types.ChallengeResponseType
import Network.AWS.CognitoIdentityProvider.Types.CodeDeliveryDetailsType
import Network.AWS.CognitoIdentityProvider.Types.CompromisedCredentialsActionsType
import Network.AWS.CognitoIdentityProvider.Types.CompromisedCredentialsEventActionType
import Network.AWS.CognitoIdentityProvider.Types.CompromisedCredentialsRiskConfigurationType
import Network.AWS.CognitoIdentityProvider.Types.ContextDataType
import Network.AWS.CognitoIdentityProvider.Types.CustomDomainConfigType
import Network.AWS.CognitoIdentityProvider.Types.CustomEmailLambdaVersionConfigType
import Network.AWS.CognitoIdentityProvider.Types.CustomEmailSenderLambdaVersionType
import Network.AWS.CognitoIdentityProvider.Types.CustomSMSLambdaVersionConfigType
import Network.AWS.CognitoIdentityProvider.Types.CustomSMSSenderLambdaVersionType
import Network.AWS.CognitoIdentityProvider.Types.DefaultEmailOptionType
import Network.AWS.CognitoIdentityProvider.Types.DeliveryMediumType
import Network.AWS.CognitoIdentityProvider.Types.DeviceConfigurationType
import Network.AWS.CognitoIdentityProvider.Types.DeviceRememberedStatusType
import Network.AWS.CognitoIdentityProvider.Types.DeviceSecretVerifierConfigType
import Network.AWS.CognitoIdentityProvider.Types.DeviceType
import Network.AWS.CognitoIdentityProvider.Types.DomainDescriptionType
import Network.AWS.CognitoIdentityProvider.Types.DomainStatusType
import Network.AWS.CognitoIdentityProvider.Types.EmailConfigurationType
import Network.AWS.CognitoIdentityProvider.Types.EmailSendingAccountType
import Network.AWS.CognitoIdentityProvider.Types.EventContextDataType
import Network.AWS.CognitoIdentityProvider.Types.EventFeedbackType
import Network.AWS.CognitoIdentityProvider.Types.EventFilterType
import Network.AWS.CognitoIdentityProvider.Types.EventResponseType
import Network.AWS.CognitoIdentityProvider.Types.EventRiskType
import Network.AWS.CognitoIdentityProvider.Types.EventType
import Network.AWS.CognitoIdentityProvider.Types.ExplicitAuthFlowsType
import Network.AWS.CognitoIdentityProvider.Types.FeedbackValueType
import Network.AWS.CognitoIdentityProvider.Types.GroupType
import Network.AWS.CognitoIdentityProvider.Types.HTTPHeader
import Network.AWS.CognitoIdentityProvider.Types.IdentityProviderType
import Network.AWS.CognitoIdentityProvider.Types.IdentityProviderTypeType
import Network.AWS.CognitoIdentityProvider.Types.LambdaConfigType
import Network.AWS.CognitoIdentityProvider.Types.MFAOptionType
import Network.AWS.CognitoIdentityProvider.Types.MessageActionType
import Network.AWS.CognitoIdentityProvider.Types.MessageTemplateType
import Network.AWS.CognitoIdentityProvider.Types.NewDeviceMetadataType
import Network.AWS.CognitoIdentityProvider.Types.NotifyConfigurationType
import Network.AWS.CognitoIdentityProvider.Types.NotifyEmailType
import Network.AWS.CognitoIdentityProvider.Types.NumberAttributeConstraintsType
import Network.AWS.CognitoIdentityProvider.Types.OAuthFlowType
import Network.AWS.CognitoIdentityProvider.Types.PasswordPolicyType
import Network.AWS.CognitoIdentityProvider.Types.PreventUserExistenceErrorTypes
import Network.AWS.CognitoIdentityProvider.Types.ProviderDescription
import Network.AWS.CognitoIdentityProvider.Types.ProviderUserIdentifierType
import Network.AWS.CognitoIdentityProvider.Types.RecoveryOptionNameType
import Network.AWS.CognitoIdentityProvider.Types.RecoveryOptionType
import Network.AWS.CognitoIdentityProvider.Types.ResourceServerScopeType
import Network.AWS.CognitoIdentityProvider.Types.ResourceServerType
import Network.AWS.CognitoIdentityProvider.Types.RiskConfigurationType
import Network.AWS.CognitoIdentityProvider.Types.RiskDecisionType
import Network.AWS.CognitoIdentityProvider.Types.RiskExceptionConfigurationType
import Network.AWS.CognitoIdentityProvider.Types.RiskLevelType
import Network.AWS.CognitoIdentityProvider.Types.SMSMFASettingsType
import Network.AWS.CognitoIdentityProvider.Types.SchemaAttributeType
import Network.AWS.CognitoIdentityProvider.Types.SmsConfigurationType
import Network.AWS.CognitoIdentityProvider.Types.SmsMFAConfigType
import Network.AWS.CognitoIdentityProvider.Types.SoftwareTokenMFAConfigType
import Network.AWS.CognitoIdentityProvider.Types.SoftwareTokenMFASettingsType
import Network.AWS.CognitoIdentityProvider.Types.StatusType
import Network.AWS.CognitoIdentityProvider.Types.StringAttributeConstraintsType
import Network.AWS.CognitoIdentityProvider.Types.TimeUnitsType
import Network.AWS.CognitoIdentityProvider.Types.TokenValidityUnitsType
import Network.AWS.CognitoIdentityProvider.Types.UICustomizationType
import Network.AWS.CognitoIdentityProvider.Types.UserContextDataType
import Network.AWS.CognitoIdentityProvider.Types.UserImportJobStatusType
import Network.AWS.CognitoIdentityProvider.Types.UserImportJobType
import Network.AWS.CognitoIdentityProvider.Types.UserPoolAddOnsType
import Network.AWS.CognitoIdentityProvider.Types.UserPoolClientDescription
import Network.AWS.CognitoIdentityProvider.Types.UserPoolClientType
import Network.AWS.CognitoIdentityProvider.Types.UserPoolDescriptionType
import Network.AWS.CognitoIdentityProvider.Types.UserPoolMFAType
import Network.AWS.CognitoIdentityProvider.Types.UserPoolPolicyType
import Network.AWS.CognitoIdentityProvider.Types.UserPoolType
import Network.AWS.CognitoIdentityProvider.Types.UserStatusType
import Network.AWS.CognitoIdentityProvider.Types.UserType
import Network.AWS.CognitoIdentityProvider.Types.UsernameAttributeType
import Network.AWS.CognitoIdentityProvider.Types.UsernameConfigurationType
import Network.AWS.CognitoIdentityProvider.Types.VerificationMessageTemplateType
import Network.AWS.CognitoIdentityProvider.Types.VerifiedAttributeType
import Network.AWS.CognitoIdentityProvider.Types.VerifySoftwareTokenResponseType
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2016-04-18@ of the Amazon Cognito Identity Provider SDK configuration.
cognitoIdentityProvider :: Service
cognitoIdentityProvider =
  Service
    { _svcAbbrev = "CognitoIdentityProvider",
      _svcSigner = v4,
      _svcPrefix = "cognito-idp",
      _svcVersion = "2016-04-18",
      _svcEndpoint =
        defaultEndpoint cognitoIdentityProvider,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "CognitoIdentityProvider",
      _svcRetry = retry
    }
  where
    retry =
      Exponential
        { _retryBase = 5.0e-2,
          _retryGrowth = 2,
          _retryAttempts = 5,
          _retryCheck = check
        }
    check e
      | has (hasStatus 504) e = Just "gateway_timeout"
      | has
          ( hasCode "ProvisionedThroughputExceededException"
              . hasStatus 400
          )
          e =
        Just "throughput_exceeded"
      | has (hasStatus 503) e = Just "service_unavailable"
      | has (hasStatus 502) e = Just "bad_gateway"
      | has (hasStatus 429) e = Just "too_many_requests"
      | has
          (hasCode "RequestThrottledException" . hasStatus 400)
          e =
        Just "request_throttled_exception"
      | has
          (hasCode "ThrottledException" . hasStatus 400)
          e =
        Just "throttled_exception"
      | has (hasStatus 509) e = Just "limit_exceeded"
      | has (hasStatus 500) e = Just "general_server_error"
      | has
          (hasCode "ThrottlingException" . hasStatus 400)
          e =
        Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e =
        Just "throttling"
      | otherwise = Nothing

-- | This exception is thrown when a password reset is required.
_PasswordResetRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_PasswordResetRequiredException =
  _MatchServiceError
    cognitoIdentityProvider
    "PasswordResetRequiredException"

-- | This exception is thrown when Amazon Cognito encounters a user name that already exists in the user pool.
_UsernameExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_UsernameExistsException =
  _MatchServiceError
    cognitoIdentityProvider
    "UsernameExistsException"

-- | This exception is thrown when a verification code fails to deliver successfully.
_CodeDeliveryFailureException :: AsError a => Getting (First ServiceError) a ServiceError
_CodeDeliveryFailureException =
  _MatchServiceError
    cognitoIdentityProvider
    "CodeDeliveryFailureException"

-- | This exception is thrown when the specified scope does not exist.
_ScopeDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_ScopeDoesNotExistException =
  _MatchServiceError
    cognitoIdentityProvider
    "ScopeDoesNotExistException"

-- | This exception is thrown if the provided code does not match what the server was expecting.
_CodeMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_CodeMismatchException =
  _MatchServiceError
    cognitoIdentityProvider
    "CodeMismatchException"

-- | This exception is thrown when Amazon Cognito encounters an internal error.
_InternalErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalErrorException =
  _MatchServiceError
    cognitoIdentityProvider
    "InternalErrorException"

-- | This exception is thrown when there is a code mismatch and the service fails to configure the software token TOTP multi-factor authentication (MFA).
_EnableSoftwareTokenMFAException :: AsError a => Getting (First ServiceError) a ServiceError
_EnableSoftwareTokenMFAException =
  _MatchServiceError
    cognitoIdentityProvider
    "EnableSoftwareTokenMFAException"

-- | This exception is thrown when a user is not confirmed successfully.
_UserNotConfirmedException :: AsError a => Getting (First ServiceError) a ServiceError
_UserNotConfirmedException =
  _MatchServiceError
    cognitoIdentityProvider
    "UserNotConfirmedException"

-- | This exception is thrown if a code has expired.
_ExpiredCodeException :: AsError a => Getting (First ServiceError) a ServiceError
_ExpiredCodeException =
  _MatchServiceError
    cognitoIdentityProvider
    "ExpiredCodeException"

-- | This exception is thrown when the user has made too many failed attempts for a given action (e.g., sign in).
_TooManyFailedAttemptsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyFailedAttemptsException =
  _MatchServiceError
    cognitoIdentityProvider
    "TooManyFailedAttemptsException"

-- | This exception is thrown when the Amazon Cognito service encounters an unexpected exception with the AWS Lambda service.
_UnexpectedLambdaException :: AsError a => Getting (First ServiceError) a ServiceError
_UnexpectedLambdaException =
  _MatchServiceError
    cognitoIdentityProvider
    "UnexpectedLambdaException"

-- | This exception is thrown when a user is not found.
_UserNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_UserNotFoundException =
  _MatchServiceError
    cognitoIdentityProvider
    "UserNotFoundException"

-- | This exception is thrown when the Amazon Cognito service encounters an invalid AWS Lambda response.
_InvalidLambdaResponseException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidLambdaResponseException =
  _MatchServiceError
    cognitoIdentityProvider
    "InvalidLambdaResponseException"

-- | This exception is thrown if two or more modifications are happening concurrently.
_ConcurrentModificationException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentModificationException =
  _MatchServiceError
    cognitoIdentityProvider
    "ConcurrentModificationException"

-- | This exception is thrown when the Amazon Cognito service encounters a user validation exception with the AWS Lambda service.
_UserLambdaValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_UserLambdaValidationException =
  _MatchServiceError
    cognitoIdentityProvider
    "UserLambdaValidationException"

-- | This exception is thrown when the software token TOTP multi-factor authentication (MFA) is not enabled for the user pool.
_SoftwareTokenMFANotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_SoftwareTokenMFANotFoundException =
  _MatchServiceError
    cognitoIdentityProvider
    "SoftwareTokenMFANotFoundException"

-- | This exception is thrown when a precondition is not met.
_PreconditionNotMetException :: AsError a => Getting (First ServiceError) a ServiceError
_PreconditionNotMetException =
  _MatchServiceError
    cognitoIdentityProvider
    "PreconditionNotMetException"

-- | This exception is thrown when a user pool tag cannot be set or updated.
_UserPoolTaggingException :: AsError a => Getting (First ServiceError) a ServiceError
_UserPoolTaggingException =
  _MatchServiceError
    cognitoIdentityProvider
    "UserPoolTaggingException"

-- | This exception is thrown when the trust relationship is invalid for the role provided for SMS configuration. This can happen if you do not trust __cognito-idp.amazonaws.com__ or the external ID provided in the role does not match what is provided in the SMS configuration for the user pool.
_InvalidSmsRoleTrustRelationshipException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSmsRoleTrustRelationshipException =
  _MatchServiceError
    cognitoIdentityProvider
    "InvalidSmsRoleTrustRelationshipException"

-- | This exception is thrown when the Amazon Cognito service encounters an invalid parameter.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError
    cognitoIdentityProvider
    "InvalidParameterException"

-- | The request failed because the user is in an unsupported state.
_UnsupportedUserStateException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedUserStateException =
  _MatchServiceError
    cognitoIdentityProvider
    "UnsupportedUserStateException"

-- | This exception is thrown when a user exceeds the limit for a requested AWS resource.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    cognitoIdentityProvider
    "LimitExceededException"

-- | This exception is thrown when the Amazon Cognito service encounters an invalid password.
_InvalidPasswordException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPasswordException =
  _MatchServiceError
    cognitoIdentityProvider
    "InvalidPasswordException"

-- | This exception is thrown when Amazon Cognito cannot find a multi-factor authentication (MFA) method.
_MFAMethodNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_MFAMethodNotFoundException =
  _MatchServiceError
    cognitoIdentityProvider
    "MFAMethodNotFoundException"

-- | This exception is thrown when a user tries to confirm the account with an email or phone number that has already been supplied as an alias from a different account. This exception tells user that an account with this email or phone already exists.
_AliasExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_AliasExistsException =
  _MatchServiceError
    cognitoIdentityProvider
    "AliasExistsException"

-- | This exception is thrown when the provider is already supported by the user pool.
_DuplicateProviderException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateProviderException =
  _MatchServiceError
    cognitoIdentityProvider
    "DuplicateProviderException"

-- | This exception is thrown when you are trying to modify a user pool while a user import job is in progress for that pool.
_UserImportInProgressException :: AsError a => Getting (First ServiceError) a ServiceError
_UserImportInProgressException =
  _MatchServiceError
    cognitoIdentityProvider
    "UserImportInProgressException"

-- | This exception is thrown when the Amazon Cognito service cannot find the requested resource.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    cognitoIdentityProvider
    "ResourceNotFoundException"

-- | This exception is returned when the role provided for SMS configuration does not have permission to publish using Amazon SNS.
_InvalidSmsRoleAccessPolicyException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSmsRoleAccessPolicyException =
  _MatchServiceError
    cognitoIdentityProvider
    "InvalidSmsRoleAccessPolicyException"

-- | This exception is thrown when the user pool configuration is invalid.
_InvalidUserPoolConfigurationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidUserPoolConfigurationException =
  _MatchServiceError
    cognitoIdentityProvider
    "InvalidUserPoolConfigurationException"

-- | This exception is thrown when the specified OAuth flow is invalid.
_InvalidOAuthFlowException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOAuthFlowException =
  _MatchServiceError
    cognitoIdentityProvider
    "InvalidOAuthFlowException"

-- | This exception is thrown when Amazon Cognito encounters a group that already exists in the user pool.
_GroupExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_GroupExistsException =
  _MatchServiceError
    cognitoIdentityProvider
    "GroupExistsException"

-- | This exception is thrown when the specified identifier is not supported.
_UnsupportedIdentityProviderException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedIdentityProviderException =
  _MatchServiceError
    cognitoIdentityProvider
    "UnsupportedIdentityProviderException"

-- | This exception is thrown when a user is not authorized.
_NotAuthorizedException :: AsError a => Getting (First ServiceError) a ServiceError
_NotAuthorizedException =
  _MatchServiceError
    cognitoIdentityProvider
    "NotAuthorizedException"

-- | This exception is thrown when the user has made too many requests for a given operation.
_TooManyRequestsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRequestsException =
  _MatchServiceError
    cognitoIdentityProvider
    "TooManyRequestsException"

-- | This exception is thrown when Amazon Cognito is not allowed to use your email identity. HTTP status code: 400.
_InvalidEmailRoleAccessPolicyException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidEmailRoleAccessPolicyException =
  _MatchServiceError
    cognitoIdentityProvider
    "InvalidEmailRoleAccessPolicyException"

-- | This exception is thrown when user pool add-ons are not enabled.
_UserPoolAddOnNotEnabledException :: AsError a => Getting (First ServiceError) a ServiceError
_UserPoolAddOnNotEnabledException =
  _MatchServiceError
    cognitoIdentityProvider
    "UserPoolAddOnNotEnabledException"
