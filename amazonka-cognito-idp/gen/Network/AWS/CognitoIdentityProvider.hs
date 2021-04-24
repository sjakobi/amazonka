{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Using the Amazon Cognito User Pools API, you can create a user pool to manage directories and users. You can authenticate a user to obtain tokens related to user identity and access policies.
--
--
-- This API reference provides information about user pools in Amazon Cognito User Pools.
--
-- For more information, see the Amazon Cognito Documentation.
module Network.AWS.CognitoIdentityProvider
  ( -- * Service Configuration
    cognitoIdentityProvider,

    -- * Errors
    -- $errors

    -- ** PasswordResetRequiredException
    _PasswordResetRequiredException,

    -- ** UsernameExistsException
    _UsernameExistsException,

    -- ** CodeDeliveryFailureException
    _CodeDeliveryFailureException,

    -- ** ScopeDoesNotExistException
    _ScopeDoesNotExistException,

    -- ** CodeMismatchException
    _CodeMismatchException,

    -- ** InternalErrorException
    _InternalErrorException,

    -- ** EnableSoftwareTokenMFAException
    _EnableSoftwareTokenMFAException,

    -- ** UserNotConfirmedException
    _UserNotConfirmedException,

    -- ** ExpiredCodeException
    _ExpiredCodeException,

    -- ** TooManyFailedAttemptsException
    _TooManyFailedAttemptsException,

    -- ** UnexpectedLambdaException
    _UnexpectedLambdaException,

    -- ** UserNotFoundException
    _UserNotFoundException,

    -- ** InvalidLambdaResponseException
    _InvalidLambdaResponseException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** UserLambdaValidationException
    _UserLambdaValidationException,

    -- ** SoftwareTokenMFANotFoundException
    _SoftwareTokenMFANotFoundException,

    -- ** PreconditionNotMetException
    _PreconditionNotMetException,

    -- ** UserPoolTaggingException
    _UserPoolTaggingException,

    -- ** InvalidSmsRoleTrustRelationshipException
    _InvalidSmsRoleTrustRelationshipException,

    -- ** InvalidParameterException
    _InvalidParameterException,

    -- ** UnsupportedUserStateException
    _UnsupportedUserStateException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** InvalidPasswordException
    _InvalidPasswordException,

    -- ** MFAMethodNotFoundException
    _MFAMethodNotFoundException,

    -- ** AliasExistsException
    _AliasExistsException,

    -- ** DuplicateProviderException
    _DuplicateProviderException,

    -- ** UserImportInProgressException
    _UserImportInProgressException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** InvalidSmsRoleAccessPolicyException
    _InvalidSmsRoleAccessPolicyException,

    -- ** InvalidUserPoolConfigurationException
    _InvalidUserPoolConfigurationException,

    -- ** InvalidOAuthFlowException
    _InvalidOAuthFlowException,

    -- ** GroupExistsException
    _GroupExistsException,

    -- ** UnsupportedIdentityProviderException
    _UnsupportedIdentityProviderException,

    -- ** NotAuthorizedException
    _NotAuthorizedException,

    -- ** TooManyRequestsException
    _TooManyRequestsException,

    -- ** InvalidEmailRoleAccessPolicyException
    _InvalidEmailRoleAccessPolicyException,

    -- ** UserPoolAddOnNotEnabledException
    _UserPoolAddOnNotEnabledException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetUserAttributeVerificationCode
    module Network.AWS.CognitoIdentityProvider.GetUserAttributeVerificationCode,

    -- ** AdminDeleteUser
    module Network.AWS.CognitoIdentityProvider.AdminDeleteUser,

    -- ** CreateUserImportJob
    module Network.AWS.CognitoIdentityProvider.CreateUserImportJob,

    -- ** GetUser
    module Network.AWS.CognitoIdentityProvider.GetUser,

    -- ** SetUserPoolMFAConfig
    module Network.AWS.CognitoIdentityProvider.SetUserPoolMFAConfig,

    -- ** UpdateUserAttributes
    module Network.AWS.CognitoIdentityProvider.UpdateUserAttributes,

    -- ** DeleteUserAttributes
    module Network.AWS.CognitoIdentityProvider.DeleteUserAttributes,

    -- ** UpdateAuthEventFeedback
    module Network.AWS.CognitoIdentityProvider.UpdateAuthEventFeedback,

    -- ** ListUserPools (Paginated)
    module Network.AWS.CognitoIdentityProvider.ListUserPools,

    -- ** ConfirmSignUp
    module Network.AWS.CognitoIdentityProvider.ConfirmSignUp,

    -- ** AdminLinkProviderForUser
    module Network.AWS.CognitoIdentityProvider.AdminLinkProviderForUser,

    -- ** UpdateUserPool
    module Network.AWS.CognitoIdentityProvider.UpdateUserPool,

    -- ** DeleteUserPool
    module Network.AWS.CognitoIdentityProvider.DeleteUserPool,

    -- ** UpdateUserPoolDomain
    module Network.AWS.CognitoIdentityProvider.UpdateUserPoolDomain,

    -- ** DeleteUserPoolDomain
    module Network.AWS.CognitoIdentityProvider.DeleteUserPoolDomain,

    -- ** CreateUserPoolDomain
    module Network.AWS.CognitoIdentityProvider.CreateUserPoolDomain,

    -- ** ChangePassword
    module Network.AWS.CognitoIdentityProvider.ChangePassword,

    -- ** RespondToAuthChallenge
    module Network.AWS.CognitoIdentityProvider.RespondToAuthChallenge,

    -- ** ListDevices
    module Network.AWS.CognitoIdentityProvider.ListDevices,

    -- ** AdminGetDevice
    module Network.AWS.CognitoIdentityProvider.AdminGetDevice,

    -- ** CreateUserPool
    module Network.AWS.CognitoIdentityProvider.CreateUserPool,

    -- ** AdminRemoveUserFromGroup
    module Network.AWS.CognitoIdentityProvider.AdminRemoveUserFromGroup,

    -- ** SetRiskConfiguration
    module Network.AWS.CognitoIdentityProvider.SetRiskConfiguration,

    -- ** ListGroups (Paginated)
    module Network.AWS.CognitoIdentityProvider.ListGroups,

    -- ** UpdateIdentityProvider
    module Network.AWS.CognitoIdentityProvider.UpdateIdentityProvider,

    -- ** ListIdentityProviders (Paginated)
    module Network.AWS.CognitoIdentityProvider.ListIdentityProviders,

    -- ** GetDevice
    module Network.AWS.CognitoIdentityProvider.GetDevice,

    -- ** DeleteIdentityProvider
    module Network.AWS.CognitoIdentityProvider.DeleteIdentityProvider,

    -- ** AdminListDevices
    module Network.AWS.CognitoIdentityProvider.AdminListDevices,

    -- ** AdminConfirmSignUp
    module Network.AWS.CognitoIdentityProvider.AdminConfirmSignUp,

    -- ** SetUICustomization
    module Network.AWS.CognitoIdentityProvider.SetUICustomization,

    -- ** AdminListUserAuthEvents (Paginated)
    module Network.AWS.CognitoIdentityProvider.AdminListUserAuthEvents,

    -- ** AdminAddUserToGroup
    module Network.AWS.CognitoIdentityProvider.AdminAddUserToGroup,

    -- ** VerifySoftwareToken
    module Network.AWS.CognitoIdentityProvider.VerifySoftwareToken,

    -- ** StopUserImportJob
    module Network.AWS.CognitoIdentityProvider.StopUserImportJob,

    -- ** CreateIdentityProvider
    module Network.AWS.CognitoIdentityProvider.CreateIdentityProvider,

    -- ** InitiateAuth
    module Network.AWS.CognitoIdentityProvider.InitiateAuth,

    -- ** AdminSetUserPassword
    module Network.AWS.CognitoIdentityProvider.AdminSetUserPassword,

    -- ** UntagResource
    module Network.AWS.CognitoIdentityProvider.UntagResource,

    -- ** AdminListGroupsForUser (Paginated)
    module Network.AWS.CognitoIdentityProvider.AdminListGroupsForUser,

    -- ** AdminUpdateAuthEventFeedback
    module Network.AWS.CognitoIdentityProvider.AdminUpdateAuthEventFeedback,

    -- ** CreateGroup
    module Network.AWS.CognitoIdentityProvider.CreateGroup,

    -- ** StartUserImportJob
    module Network.AWS.CognitoIdentityProvider.StartUserImportJob,

    -- ** DescribeUserPoolDomain
    module Network.AWS.CognitoIdentityProvider.DescribeUserPoolDomain,

    -- ** ListUsersInGroup (Paginated)
    module Network.AWS.CognitoIdentityProvider.ListUsersInGroup,

    -- ** AdminUserGlobalSignOut
    module Network.AWS.CognitoIdentityProvider.AdminUserGlobalSignOut,

    -- ** DescribeUserPool
    module Network.AWS.CognitoIdentityProvider.DescribeUserPool,

    -- ** AdminGetUser
    module Network.AWS.CognitoIdentityProvider.AdminGetUser,

    -- ** GetSigningCertificate
    module Network.AWS.CognitoIdentityProvider.GetSigningCertificate,

    -- ** TagResource
    module Network.AWS.CognitoIdentityProvider.TagResource,

    -- ** AssociateSoftwareToken
    module Network.AWS.CognitoIdentityProvider.AssociateSoftwareToken,

    -- ** ForgotPassword
    module Network.AWS.CognitoIdentityProvider.ForgotPassword,

    -- ** UpdateDeviceStatus
    module Network.AWS.CognitoIdentityProvider.UpdateDeviceStatus,

    -- ** DeleteUserPoolClient
    module Network.AWS.CognitoIdentityProvider.DeleteUserPoolClient,

    -- ** UpdateUserPoolClient
    module Network.AWS.CognitoIdentityProvider.UpdateUserPoolClient,

    -- ** ForgetDevice
    module Network.AWS.CognitoIdentityProvider.ForgetDevice,

    -- ** AdminDisableUser
    module Network.AWS.CognitoIdentityProvider.AdminDisableUser,

    -- ** AdminCreateUser
    module Network.AWS.CognitoIdentityProvider.AdminCreateUser,

    -- ** AdminUpdateDeviceStatus
    module Network.AWS.CognitoIdentityProvider.AdminUpdateDeviceStatus,

    -- ** AdminForgetDevice
    module Network.AWS.CognitoIdentityProvider.AdminForgetDevice,

    -- ** DescribeIdentityProvider
    module Network.AWS.CognitoIdentityProvider.DescribeIdentityProvider,

    -- ** ListUserImportJobs
    module Network.AWS.CognitoIdentityProvider.ListUserImportJobs,

    -- ** GetUICustomization
    module Network.AWS.CognitoIdentityProvider.GetUICustomization,

    -- ** GetCSVHeader
    module Network.AWS.CognitoIdentityProvider.GetCSVHeader,

    -- ** AdminEnableUser
    module Network.AWS.CognitoIdentityProvider.AdminEnableUser,

    -- ** AdminInitiateAuth
    module Network.AWS.CognitoIdentityProvider.AdminInitiateAuth,

    -- ** AdminResetUserPassword
    module Network.AWS.CognitoIdentityProvider.AdminResetUserPassword,

    -- ** GetIdentityProviderByIdentifier
    module Network.AWS.CognitoIdentityProvider.GetIdentityProviderByIdentifier,

    -- ** AdminSetUserSettings
    module Network.AWS.CognitoIdentityProvider.AdminSetUserSettings,

    -- ** DescribeUserPoolClient
    module Network.AWS.CognitoIdentityProvider.DescribeUserPoolClient,

    -- ** GetGroup
    module Network.AWS.CognitoIdentityProvider.GetGroup,

    -- ** ResendConfirmationCode
    module Network.AWS.CognitoIdentityProvider.ResendConfirmationCode,

    -- ** AdminRespondToAuthChallenge
    module Network.AWS.CognitoIdentityProvider.AdminRespondToAuthChallenge,

    -- ** SignUp
    module Network.AWS.CognitoIdentityProvider.SignUp,

    -- ** DescribeUserImportJob
    module Network.AWS.CognitoIdentityProvider.DescribeUserImportJob,

    -- ** UpdateGroup
    module Network.AWS.CognitoIdentityProvider.UpdateGroup,

    -- ** UpdateResourceServer
    module Network.AWS.CognitoIdentityProvider.UpdateResourceServer,

    -- ** DeleteGroup
    module Network.AWS.CognitoIdentityProvider.DeleteGroup,

    -- ** SetUserSettings
    module Network.AWS.CognitoIdentityProvider.SetUserSettings,

    -- ** ListResourceServers (Paginated)
    module Network.AWS.CognitoIdentityProvider.ListResourceServers,

    -- ** DeleteResourceServer
    module Network.AWS.CognitoIdentityProvider.DeleteResourceServer,

    -- ** DescribeRiskConfiguration
    module Network.AWS.CognitoIdentityProvider.DescribeRiskConfiguration,

    -- ** GlobalSignOut
    module Network.AWS.CognitoIdentityProvider.GlobalSignOut,

    -- ** GetUserPoolMFAConfig
    module Network.AWS.CognitoIdentityProvider.GetUserPoolMFAConfig,

    -- ** CreateResourceServer
    module Network.AWS.CognitoIdentityProvider.CreateResourceServer,

    -- ** AdminUpdateUserAttributes
    module Network.AWS.CognitoIdentityProvider.AdminUpdateUserAttributes,

    -- ** DeleteUser
    module Network.AWS.CognitoIdentityProvider.DeleteUser,

    -- ** AdminDeleteUserAttributes
    module Network.AWS.CognitoIdentityProvider.AdminDeleteUserAttributes,

    -- ** ListUsers (Paginated)
    module Network.AWS.CognitoIdentityProvider.ListUsers,

    -- ** AdminDisableProviderForUser
    module Network.AWS.CognitoIdentityProvider.AdminDisableProviderForUser,

    -- ** CreateUserPoolClient
    module Network.AWS.CognitoIdentityProvider.CreateUserPoolClient,

    -- ** ListUserPoolClients (Paginated)
    module Network.AWS.CognitoIdentityProvider.ListUserPoolClients,

    -- ** AddCustomAttributes
    module Network.AWS.CognitoIdentityProvider.AddCustomAttributes,

    -- ** AdminSetUserMFAPreference
    module Network.AWS.CognitoIdentityProvider.AdminSetUserMFAPreference,

    -- ** ListTagsForResource
    module Network.AWS.CognitoIdentityProvider.ListTagsForResource,

    -- ** ConfirmForgotPassword
    module Network.AWS.CognitoIdentityProvider.ConfirmForgotPassword,

    -- ** SetUserMFAPreference
    module Network.AWS.CognitoIdentityProvider.SetUserMFAPreference,

    -- ** VerifyUserAttribute
    module Network.AWS.CognitoIdentityProvider.VerifyUserAttribute,

    -- ** ConfirmDevice
    module Network.AWS.CognitoIdentityProvider.ConfirmDevice,

    -- ** DescribeResourceServer
    module Network.AWS.CognitoIdentityProvider.DescribeResourceServer,

    -- * Types

    -- ** AccountTakeoverEventActionType
    AccountTakeoverEventActionType (..),

    -- ** AdvancedSecurityModeType
    AdvancedSecurityModeType (..),

    -- ** AliasAttributeType
    AliasAttributeType (..),

    -- ** AttributeDataType
    AttributeDataType (..),

    -- ** AuthFlowType
    AuthFlowType (..),

    -- ** ChallengeName
    ChallengeName (..),

    -- ** ChallengeNameType
    ChallengeNameType (..),

    -- ** ChallengeResponse
    ChallengeResponse (..),

    -- ** CompromisedCredentialsEventActionType
    CompromisedCredentialsEventActionType (..),

    -- ** CustomEmailSenderLambdaVersionType
    CustomEmailSenderLambdaVersionType (..),

    -- ** CustomSMSSenderLambdaVersionType
    CustomSMSSenderLambdaVersionType (..),

    -- ** DefaultEmailOptionType
    DefaultEmailOptionType (..),

    -- ** DeliveryMediumType
    DeliveryMediumType (..),

    -- ** DeviceRememberedStatusType
    DeviceRememberedStatusType (..),

    -- ** DomainStatusType
    DomainStatusType (..),

    -- ** EmailSendingAccountType
    EmailSendingAccountType (..),

    -- ** EventFilterType
    EventFilterType (..),

    -- ** EventResponseType
    EventResponseType (..),

    -- ** EventType
    EventType (..),

    -- ** ExplicitAuthFlowsType
    ExplicitAuthFlowsType (..),

    -- ** FeedbackValueType
    FeedbackValueType (..),

    -- ** IdentityProviderTypeType
    IdentityProviderTypeType (..),

    -- ** MessageActionType
    MessageActionType (..),

    -- ** OAuthFlowType
    OAuthFlowType (..),

    -- ** PreventUserExistenceErrorTypes
    PreventUserExistenceErrorTypes (..),

    -- ** RecoveryOptionNameType
    RecoveryOptionNameType (..),

    -- ** RiskDecisionType
    RiskDecisionType (..),

    -- ** RiskLevelType
    RiskLevelType (..),

    -- ** StatusType
    StatusType (..),

    -- ** TimeUnitsType
    TimeUnitsType (..),

    -- ** UserImportJobStatusType
    UserImportJobStatusType (..),

    -- ** UserPoolMFAType
    UserPoolMFAType (..),

    -- ** UserStatusType
    UserStatusType (..),

    -- ** UsernameAttributeType
    UsernameAttributeType (..),

    -- ** VerifiedAttributeType
    VerifiedAttributeType (..),

    -- ** VerifySoftwareTokenResponseType
    VerifySoftwareTokenResponseType (..),

    -- ** AccountRecoverySettingType
    AccountRecoverySettingType,
    accountRecoverySettingType,
    arstRecoveryMechanisms,

    -- ** AccountTakeoverActionType
    AccountTakeoverActionType,
    accountTakeoverActionType,
    atatNotify,
    atatEventAction,

    -- ** AccountTakeoverActionsType
    AccountTakeoverActionsType,
    accountTakeoverActionsType,
    atatLowAction,
    atatMediumAction,
    atatHighAction,

    -- ** AccountTakeoverRiskConfigurationType
    AccountTakeoverRiskConfigurationType,
    accountTakeoverRiskConfigurationType,
    atrctNotifyConfiguration,
    atrctActions,

    -- ** AdminCreateUserConfigType
    AdminCreateUserConfigType,
    adminCreateUserConfigType,
    acuctAllowAdminCreateUserOnly,
    acuctInviteMessageTemplate,
    acuctUnusedAccountValidityDays,

    -- ** AnalyticsConfigurationType
    AnalyticsConfigurationType,
    analyticsConfigurationType,
    actApplicationARN,
    actApplicationId,
    actRoleARN,
    actUserDataShared,
    actExternalId,

    -- ** AnalyticsMetadataType
    AnalyticsMetadataType,
    analyticsMetadataType,
    amtAnalyticsEndpointId,

    -- ** AttributeType
    AttributeType,
    attributeType,
    atValue,
    atName,

    -- ** AuthEventType
    AuthEventType,
    authEventType,
    aetEventType,
    aetEventId,
    aetChallengeResponses,
    aetEventContextData,
    aetCreationDate,
    aetEventRisk,
    aetEventResponse,
    aetEventFeedback,

    -- ** AuthenticationResultType
    AuthenticationResultType,
    authenticationResultType,
    artExpiresIn,
    artTokenType,
    artAccessToken,
    artNewDeviceMetadata,
    artIdToken,
    artRefreshToken,

    -- ** ChallengeResponseType
    ChallengeResponseType,
    challengeResponseType,
    crtChallengeResponse,
    crtChallengeName,

    -- ** CodeDeliveryDetailsType
    CodeDeliveryDetailsType,
    codeDeliveryDetailsType,
    cddtDeliveryMedium,
    cddtAttributeName,
    cddtDestination,

    -- ** CompromisedCredentialsActionsType
    CompromisedCredentialsActionsType,
    compromisedCredentialsActionsType,
    ccatEventAction,

    -- ** CompromisedCredentialsRiskConfigurationType
    CompromisedCredentialsRiskConfigurationType,
    compromisedCredentialsRiskConfigurationType,
    ccrctEventFilter,
    ccrctActions,

    -- ** ContextDataType
    ContextDataType,
    contextDataType,
    cdtEncodedData,
    cdtIPAddress,
    cdtServerName,
    cdtServerPath,
    cdtHTTPHeaders,

    -- ** CustomDomainConfigType
    CustomDomainConfigType,
    customDomainConfigType,
    cdctCertificateARN,

    -- ** CustomEmailLambdaVersionConfigType
    CustomEmailLambdaVersionConfigType,
    customEmailLambdaVersionConfigType,
    celvctLambdaVersion,
    celvctLambdaARN,

    -- ** CustomSMSLambdaVersionConfigType
    CustomSMSLambdaVersionConfigType,
    customSMSLambdaVersionConfigType,
    csmslvctLambdaVersion,
    csmslvctLambdaARN,

    -- ** DeviceConfigurationType
    DeviceConfigurationType,
    deviceConfigurationType,
    dctChallengeRequiredOnNewDevice,
    dctDeviceOnlyRememberedOnUserPrompt,

    -- ** DeviceSecretVerifierConfigType
    DeviceSecretVerifierConfigType,
    deviceSecretVerifierConfigType,
    dsvctPasswordVerifier,
    dsvctSalt,

    -- ** DeviceType
    DeviceType,
    deviceType,
    dtDeviceLastModifiedDate,
    dtDeviceKey,
    dtDeviceLastAuthenticatedDate,
    dtDeviceCreateDate,
    dtDeviceAttributes,

    -- ** DomainDescriptionType
    DomainDescriptionType,
    domainDescriptionType,
    ddtStatus,
    ddtCustomDomainConfig,
    ddtAWSAccountId,
    ddtS3Bucket,
    ddtUserPoolId,
    ddtDomain,
    ddtCloudFrontDistribution,
    ddtVersion,

    -- ** EmailConfigurationType
    EmailConfigurationType,
    emailConfigurationType,
    ectEmailSendingAccount,
    ectReplyToEmailAddress,
    ectFrom,
    ectSourceARN,
    ectConfigurationSet,

    -- ** EventContextDataType
    EventContextDataType,
    eventContextDataType,
    ecdtIPAddress,
    ecdtCity,
    ecdtDeviceName,
    ecdtTimezone,
    ecdtCountry,

    -- ** EventFeedbackType
    EventFeedbackType,
    eventFeedbackType,
    eftFeedbackDate,
    eftFeedbackValue,
    eftProvider,

    -- ** EventRiskType
    EventRiskType,
    eventRiskType,
    ertCompromisedCredentialsDetected,
    ertRiskDecision,
    ertRiskLevel,

    -- ** GroupType
    GroupType,
    groupType,
    gtLastModifiedDate,
    gtRoleARN,
    gtGroupName,
    gtUserPoolId,
    gtCreationDate,
    gtDescription,
    gtPrecedence,

    -- ** HTTPHeader
    HTTPHeader,
    hTTPHeader,
    httphHeaderName,
    httphHeaderValue,

    -- ** IdentityProviderType
    IdentityProviderType,
    identityProviderType,
    iptLastModifiedDate,
    iptProviderType,
    iptProviderName,
    iptProviderDetails,
    iptUserPoolId,
    iptCreationDate,
    iptIdpIdentifiers,
    iptAttributeMapping,

    -- ** LambdaConfigType
    LambdaConfigType,
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

    -- ** MFAOptionType
    MFAOptionType,
    mfaOptionType,
    motDeliveryMedium,
    motAttributeName,

    -- ** MessageTemplateType
    MessageTemplateType,
    messageTemplateType,
    mttEmailSubject,
    mttEmailMessage,
    mttSMSMessage,

    -- ** NewDeviceMetadataType
    NewDeviceMetadataType,
    newDeviceMetadataType,
    ndmtDeviceKey,
    ndmtDeviceGroupKey,

    -- ** NotifyConfigurationType
    NotifyConfigurationType,
    notifyConfigurationType,
    nctMFAEmail,
    nctBlockEmail,
    nctReplyTo,
    nctFrom,
    nctNoActionEmail,
    nctSourceARN,

    -- ** NotifyEmailType
    NotifyEmailType,
    notifyEmailType,
    netHTMLBody,
    netTextBody,
    netSubject,

    -- ** NumberAttributeConstraintsType
    NumberAttributeConstraintsType,
    numberAttributeConstraintsType,
    nactMaxValue,
    nactMinValue,

    -- ** PasswordPolicyType
    PasswordPolicyType,
    passwordPolicyType,
    pptTemporaryPasswordValidityDays,
    pptRequireUppercase,
    pptMinimumLength,
    pptRequireSymbols,
    pptRequireNumbers,
    pptRequireLowercase,

    -- ** ProviderDescription
    ProviderDescription,
    providerDescription,
    pdLastModifiedDate,
    pdProviderType,
    pdProviderName,
    pdCreationDate,

    -- ** ProviderUserIdentifierType
    ProviderUserIdentifierType,
    providerUserIdentifierType,
    puitProviderName,
    puitProviderAttributeName,
    puitProviderAttributeValue,

    -- ** RecoveryOptionType
    RecoveryOptionType,
    recoveryOptionType,
    rotPriority,
    rotName,

    -- ** ResourceServerScopeType
    ResourceServerScopeType,
    resourceServerScopeType,
    rsstScopeName,
    rsstScopeDescription,

    -- ** ResourceServerType
    ResourceServerType,
    resourceServerType,
    rstScopes,
    rstIdentifier,
    rstUserPoolId,
    rstName,

    -- ** RiskConfigurationType
    RiskConfigurationType,
    riskConfigurationType,
    rctAccountTakeoverRiskConfiguration,
    rctLastModifiedDate,
    rctClientId,
    rctRiskExceptionConfiguration,
    rctUserPoolId,
    rctCompromisedCredentialsRiskConfiguration,

    -- ** RiskExceptionConfigurationType
    RiskExceptionConfigurationType,
    riskExceptionConfigurationType,
    rectSkippedIPRangeList,
    rectBlockedIPRangeList,

    -- ** SMSMFASettingsType
    SMSMFASettingsType,
    sMSMFASettingsType,
    smsmstEnabled,
    smsmstPreferredMFA,

    -- ** SchemaAttributeType
    SchemaAttributeType,
    schemaAttributeType,
    satAttributeDataType,
    satRequired,
    satNumberAttributeConstraints,
    satDeveloperOnlyAttribute,
    satStringAttributeConstraints,
    satName,
    satMutable,

    -- ** SmsConfigurationType
    SmsConfigurationType,
    smsConfigurationType,
    sctExternalId,
    sctSNSCallerARN,

    -- ** SmsMFAConfigType
    SmsMFAConfigType,
    smsMFAConfigType,
    smctSmsConfiguration,
    smctSmsAuthenticationMessage,

    -- ** SoftwareTokenMFAConfigType
    SoftwareTokenMFAConfigType,
    softwareTokenMFAConfigType,
    stmctEnabled,

    -- ** SoftwareTokenMFASettingsType
    SoftwareTokenMFASettingsType,
    softwareTokenMFASettingsType,
    stmstEnabled,
    stmstPreferredMFA,

    -- ** StringAttributeConstraintsType
    StringAttributeConstraintsType,
    stringAttributeConstraintsType,
    sactMinLength,
    sactMaxLength,

    -- ** TokenValidityUnitsType
    TokenValidityUnitsType,
    tokenValidityUnitsType,
    tvutAccessToken,
    tvutIdToken,
    tvutRefreshToken,

    -- ** UICustomizationType
    UICustomizationType,
    uICustomizationType,
    uictLastModifiedDate,
    uictClientId,
    uictCSSVersion,
    uictUserPoolId,
    uictCreationDate,
    uictImageURL,
    uictCSS,

    -- ** UserContextDataType
    UserContextDataType,
    userContextDataType,
    ucdtEncodedData,

    -- ** UserImportJobType
    UserImportJobType,
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

    -- ** UserPoolAddOnsType
    UserPoolAddOnsType,
    userPoolAddOnsType,
    upaotAdvancedSecurityMode,

    -- ** UserPoolClientDescription
    UserPoolClientDescription,
    userPoolClientDescription,
    upcdClientId,
    upcdClientName,
    upcdUserPoolId,

    -- ** UserPoolClientType
    UserPoolClientType,
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

    -- ** UserPoolDescriptionType
    UserPoolDescriptionType,
    userPoolDescriptionType,
    updtLastModifiedDate,
    updtStatus,
    updtId,
    updtCreationDate,
    updtLambdaConfig,
    updtName,

    -- ** UserPoolPolicyType
    UserPoolPolicyType,
    userPoolPolicyType,
    upptPasswordPolicy,

    -- ** UserPoolType
    UserPoolType,
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

    -- ** UserType
    UserType,
    userType,
    utUserCreateDate,
    utUserLastModifiedDate,
    utEnabled,
    utAttributes,
    utUsername,
    utUserStatus,
    utMFAOptions,

    -- ** UsernameConfigurationType
    UsernameConfigurationType,
    usernameConfigurationType,
    uctCaseSensitive,

    -- ** VerificationMessageTemplateType
    VerificationMessageTemplateType,
    verificationMessageTemplateType,
    vmttDefaultEmailOption,
    vmttEmailSubjectByLink,
    vmttEmailSubject,
    vmttEmailMessage,
    vmttEmailMessageByLink,
    vmttSmsMessage,
  )
where

import Network.AWS.CognitoIdentityProvider.AddCustomAttributes
import Network.AWS.CognitoIdentityProvider.AdminAddUserToGroup
import Network.AWS.CognitoIdentityProvider.AdminConfirmSignUp
import Network.AWS.CognitoIdentityProvider.AdminCreateUser
import Network.AWS.CognitoIdentityProvider.AdminDeleteUser
import Network.AWS.CognitoIdentityProvider.AdminDeleteUserAttributes
import Network.AWS.CognitoIdentityProvider.AdminDisableProviderForUser
import Network.AWS.CognitoIdentityProvider.AdminDisableUser
import Network.AWS.CognitoIdentityProvider.AdminEnableUser
import Network.AWS.CognitoIdentityProvider.AdminForgetDevice
import Network.AWS.CognitoIdentityProvider.AdminGetDevice
import Network.AWS.CognitoIdentityProvider.AdminGetUser
import Network.AWS.CognitoIdentityProvider.AdminInitiateAuth
import Network.AWS.CognitoIdentityProvider.AdminLinkProviderForUser
import Network.AWS.CognitoIdentityProvider.AdminListDevices
import Network.AWS.CognitoIdentityProvider.AdminListGroupsForUser
import Network.AWS.CognitoIdentityProvider.AdminListUserAuthEvents
import Network.AWS.CognitoIdentityProvider.AdminRemoveUserFromGroup
import Network.AWS.CognitoIdentityProvider.AdminResetUserPassword
import Network.AWS.CognitoIdentityProvider.AdminRespondToAuthChallenge
import Network.AWS.CognitoIdentityProvider.AdminSetUserMFAPreference
import Network.AWS.CognitoIdentityProvider.AdminSetUserPassword
import Network.AWS.CognitoIdentityProvider.AdminSetUserSettings
import Network.AWS.CognitoIdentityProvider.AdminUpdateAuthEventFeedback
import Network.AWS.CognitoIdentityProvider.AdminUpdateDeviceStatus
import Network.AWS.CognitoIdentityProvider.AdminUpdateUserAttributes
import Network.AWS.CognitoIdentityProvider.AdminUserGlobalSignOut
import Network.AWS.CognitoIdentityProvider.AssociateSoftwareToken
import Network.AWS.CognitoIdentityProvider.ChangePassword
import Network.AWS.CognitoIdentityProvider.ConfirmDevice
import Network.AWS.CognitoIdentityProvider.ConfirmForgotPassword
import Network.AWS.CognitoIdentityProvider.ConfirmSignUp
import Network.AWS.CognitoIdentityProvider.CreateGroup
import Network.AWS.CognitoIdentityProvider.CreateIdentityProvider
import Network.AWS.CognitoIdentityProvider.CreateResourceServer
import Network.AWS.CognitoIdentityProvider.CreateUserImportJob
import Network.AWS.CognitoIdentityProvider.CreateUserPool
import Network.AWS.CognitoIdentityProvider.CreateUserPoolClient
import Network.AWS.CognitoIdentityProvider.CreateUserPoolDomain
import Network.AWS.CognitoIdentityProvider.DeleteGroup
import Network.AWS.CognitoIdentityProvider.DeleteIdentityProvider
import Network.AWS.CognitoIdentityProvider.DeleteResourceServer
import Network.AWS.CognitoIdentityProvider.DeleteUser
import Network.AWS.CognitoIdentityProvider.DeleteUserAttributes
import Network.AWS.CognitoIdentityProvider.DeleteUserPool
import Network.AWS.CognitoIdentityProvider.DeleteUserPoolClient
import Network.AWS.CognitoIdentityProvider.DeleteUserPoolDomain
import Network.AWS.CognitoIdentityProvider.DescribeIdentityProvider
import Network.AWS.CognitoIdentityProvider.DescribeResourceServer
import Network.AWS.CognitoIdentityProvider.DescribeRiskConfiguration
import Network.AWS.CognitoIdentityProvider.DescribeUserImportJob
import Network.AWS.CognitoIdentityProvider.DescribeUserPool
import Network.AWS.CognitoIdentityProvider.DescribeUserPoolClient
import Network.AWS.CognitoIdentityProvider.DescribeUserPoolDomain
import Network.AWS.CognitoIdentityProvider.ForgetDevice
import Network.AWS.CognitoIdentityProvider.ForgotPassword
import Network.AWS.CognitoIdentityProvider.GetCSVHeader
import Network.AWS.CognitoIdentityProvider.GetDevice
import Network.AWS.CognitoIdentityProvider.GetGroup
import Network.AWS.CognitoIdentityProvider.GetIdentityProviderByIdentifier
import Network.AWS.CognitoIdentityProvider.GetSigningCertificate
import Network.AWS.CognitoIdentityProvider.GetUICustomization
import Network.AWS.CognitoIdentityProvider.GetUser
import Network.AWS.CognitoIdentityProvider.GetUserAttributeVerificationCode
import Network.AWS.CognitoIdentityProvider.GetUserPoolMFAConfig
import Network.AWS.CognitoIdentityProvider.GlobalSignOut
import Network.AWS.CognitoIdentityProvider.InitiateAuth
import Network.AWS.CognitoIdentityProvider.ListDevices
import Network.AWS.CognitoIdentityProvider.ListGroups
import Network.AWS.CognitoIdentityProvider.ListIdentityProviders
import Network.AWS.CognitoIdentityProvider.ListResourceServers
import Network.AWS.CognitoIdentityProvider.ListTagsForResource
import Network.AWS.CognitoIdentityProvider.ListUserImportJobs
import Network.AWS.CognitoIdentityProvider.ListUserPoolClients
import Network.AWS.CognitoIdentityProvider.ListUserPools
import Network.AWS.CognitoIdentityProvider.ListUsers
import Network.AWS.CognitoIdentityProvider.ListUsersInGroup
import Network.AWS.CognitoIdentityProvider.ResendConfirmationCode
import Network.AWS.CognitoIdentityProvider.RespondToAuthChallenge
import Network.AWS.CognitoIdentityProvider.SetRiskConfiguration
import Network.AWS.CognitoIdentityProvider.SetUICustomization
import Network.AWS.CognitoIdentityProvider.SetUserMFAPreference
import Network.AWS.CognitoIdentityProvider.SetUserPoolMFAConfig
import Network.AWS.CognitoIdentityProvider.SetUserSettings
import Network.AWS.CognitoIdentityProvider.SignUp
import Network.AWS.CognitoIdentityProvider.StartUserImportJob
import Network.AWS.CognitoIdentityProvider.StopUserImportJob
import Network.AWS.CognitoIdentityProvider.TagResource
import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.CognitoIdentityProvider.UntagResource
import Network.AWS.CognitoIdentityProvider.UpdateAuthEventFeedback
import Network.AWS.CognitoIdentityProvider.UpdateDeviceStatus
import Network.AWS.CognitoIdentityProvider.UpdateGroup
import Network.AWS.CognitoIdentityProvider.UpdateIdentityProvider
import Network.AWS.CognitoIdentityProvider.UpdateResourceServer
import Network.AWS.CognitoIdentityProvider.UpdateUserAttributes
import Network.AWS.CognitoIdentityProvider.UpdateUserPool
import Network.AWS.CognitoIdentityProvider.UpdateUserPoolClient
import Network.AWS.CognitoIdentityProvider.UpdateUserPoolDomain
import Network.AWS.CognitoIdentityProvider.VerifySoftwareToken
import Network.AWS.CognitoIdentityProvider.VerifyUserAttribute
import Network.AWS.CognitoIdentityProvider.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CognitoIdentityProvider'.

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
