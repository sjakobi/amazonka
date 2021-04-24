{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CognitoIdentityProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CognitoIdentityProvider where

import Data.Proxy
import Network.AWS.CognitoIdentityProvider
import Test.AWS.CognitoIdentityProvider.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetUserAttributeVerificationCode $
--             getUserAttributeVerificationCode
--
--         , requestAdminDeleteUser $
--             adminDeleteUser
--
--         , requestCreateUserImportJob $
--             createUserImportJob
--
--         , requestGetUser $
--             getUser
--
--         , requestSetUserPoolMFAConfig $
--             setUserPoolMFAConfig
--
--         , requestUpdateUserAttributes $
--             updateUserAttributes
--
--         , requestDeleteUserAttributes $
--             deleteUserAttributes
--
--         , requestUpdateAuthEventFeedback $
--             updateAuthEventFeedback
--
--         , requestListUserPools $
--             listUserPools
--
--         , requestConfirmSignUp $
--             confirmSignUp
--
--         , requestAdminLinkProviderForUser $
--             adminLinkProviderForUser
--
--         , requestUpdateUserPool $
--             updateUserPool
--
--         , requestDeleteUserPool $
--             deleteUserPool
--
--         , requestUpdateUserPoolDomain $
--             updateUserPoolDomain
--
--         , requestDeleteUserPoolDomain $
--             deleteUserPoolDomain
--
--         , requestCreateUserPoolDomain $
--             createUserPoolDomain
--
--         , requestChangePassword $
--             changePassword
--
--         , requestRespondToAuthChallenge $
--             respondToAuthChallenge
--
--         , requestListDevices $
--             listDevices
--
--         , requestAdminGetDevice $
--             adminGetDevice
--
--         , requestCreateUserPool $
--             createUserPool
--
--         , requestAdminRemoveUserFromGroup $
--             adminRemoveUserFromGroup
--
--         , requestSetRiskConfiguration $
--             setRiskConfiguration
--
--         , requestListGroups $
--             listGroups
--
--         , requestUpdateIdentityProvider $
--             updateIdentityProvider
--
--         , requestListIdentityProviders $
--             listIdentityProviders
--
--         , requestGetDevice $
--             getDevice
--
--         , requestDeleteIdentityProvider $
--             deleteIdentityProvider
--
--         , requestAdminListDevices $
--             adminListDevices
--
--         , requestAdminConfirmSignUp $
--             adminConfirmSignUp
--
--         , requestSetUICustomization $
--             setUICustomization
--
--         , requestAdminListUserAuthEvents $
--             adminListUserAuthEvents
--
--         , requestAdminAddUserToGroup $
--             adminAddUserToGroup
--
--         , requestVerifySoftwareToken $
--             verifySoftwareToken
--
--         , requestStopUserImportJob $
--             stopUserImportJob
--
--         , requestCreateIdentityProvider $
--             createIdentityProvider
--
--         , requestInitiateAuth $
--             initiateAuth
--
--         , requestAdminSetUserPassword $
--             adminSetUserPassword
--
--         , requestUntagResource $
--             untagResource
--
--         , requestAdminListGroupsForUser $
--             adminListGroupsForUser
--
--         , requestAdminUpdateAuthEventFeedback $
--             adminUpdateAuthEventFeedback
--
--         , requestCreateGroup $
--             createGroup
--
--         , requestStartUserImportJob $
--             startUserImportJob
--
--         , requestDescribeUserPoolDomain $
--             describeUserPoolDomain
--
--         , requestListUsersInGroup $
--             listUsersInGroup
--
--         , requestAdminUserGlobalSignOut $
--             adminUserGlobalSignOut
--
--         , requestDescribeUserPool $
--             describeUserPool
--
--         , requestAdminGetUser $
--             adminGetUser
--
--         , requestGetSigningCertificate $
--             getSigningCertificate
--
--         , requestTagResource $
--             tagResource
--
--         , requestAssociateSoftwareToken $
--             associateSoftwareToken
--
--         , requestForgotPassword $
--             forgotPassword
--
--         , requestUpdateDeviceStatus $
--             updateDeviceStatus
--
--         , requestDeleteUserPoolClient $
--             deleteUserPoolClient
--
--         , requestUpdateUserPoolClient $
--             updateUserPoolClient
--
--         , requestForgetDevice $
--             forgetDevice
--
--         , requestAdminDisableUser $
--             adminDisableUser
--
--         , requestAdminCreateUser $
--             adminCreateUser
--
--         , requestAdminUpdateDeviceStatus $
--             adminUpdateDeviceStatus
--
--         , requestAdminForgetDevice $
--             adminForgetDevice
--
--         , requestDescribeIdentityProvider $
--             describeIdentityProvider
--
--         , requestListUserImportJobs $
--             listUserImportJobs
--
--         , requestGetUICustomization $
--             getUICustomization
--
--         , requestGetCSVHeader $
--             getCSVHeader
--
--         , requestAdminEnableUser $
--             adminEnableUser
--
--         , requestAdminInitiateAuth $
--             adminInitiateAuth
--
--         , requestAdminResetUserPassword $
--             adminResetUserPassword
--
--         , requestGetIdentityProviderByIdentifier $
--             getIdentityProviderByIdentifier
--
--         , requestAdminSetUserSettings $
--             adminSetUserSettings
--
--         , requestDescribeUserPoolClient $
--             describeUserPoolClient
--
--         , requestGetGroup $
--             getGroup
--
--         , requestResendConfirmationCode $
--             resendConfirmationCode
--
--         , requestAdminRespondToAuthChallenge $
--             adminRespondToAuthChallenge
--
--         , requestSignUp $
--             signUp
--
--         , requestDescribeUserImportJob $
--             describeUserImportJob
--
--         , requestUpdateGroup $
--             updateGroup
--
--         , requestUpdateResourceServer $
--             updateResourceServer
--
--         , requestDeleteGroup $
--             deleteGroup
--
--         , requestSetUserSettings $
--             setUserSettings
--
--         , requestListResourceServers $
--             listResourceServers
--
--         , requestDeleteResourceServer $
--             deleteResourceServer
--
--         , requestDescribeRiskConfiguration $
--             describeRiskConfiguration
--
--         , requestGlobalSignOut $
--             globalSignOut
--
--         , requestGetUserPoolMFAConfig $
--             getUserPoolMFAConfig
--
--         , requestCreateResourceServer $
--             createResourceServer
--
--         , requestAdminUpdateUserAttributes $
--             adminUpdateUserAttributes
--
--         , requestDeleteUser $
--             deleteUser
--
--         , requestAdminDeleteUserAttributes $
--             adminDeleteUserAttributes
--
--         , requestListUsers $
--             listUsers
--
--         , requestAdminDisableProviderForUser $
--             adminDisableProviderForUser
--
--         , requestCreateUserPoolClient $
--             createUserPoolClient
--
--         , requestListUserPoolClients $
--             listUserPoolClients
--
--         , requestAddCustomAttributes $
--             addCustomAttributes
--
--         , requestAdminSetUserMFAPreference $
--             adminSetUserMFAPreference
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestConfirmForgotPassword $
--             confirmForgotPassword
--
--         , requestSetUserMFAPreference $
--             setUserMFAPreference
--
--         , requestVerifyUserAttribute $
--             verifyUserAttribute
--
--         , requestConfirmDevice $
--             confirmDevice
--
--         , requestDescribeResourceServer $
--             describeResourceServer
--
--           ]

--     , testGroup "response"
--         [ responseGetUserAttributeVerificationCode $
--             getUserAttributeVerificationCodeResponse
--
--         , responseAdminDeleteUser $
--             adminDeleteUserResponse
--
--         , responseCreateUserImportJob $
--             createUserImportJobResponse
--
--         , responseGetUser $
--             getUserResponse
--
--         , responseSetUserPoolMFAConfig $
--             setUserPoolMFAConfigResponse
--
--         , responseUpdateUserAttributes $
--             updateUserAttributesResponse
--
--         , responseDeleteUserAttributes $
--             deleteUserAttributesResponse
--
--         , responseUpdateAuthEventFeedback $
--             updateAuthEventFeedbackResponse
--
--         , responseListUserPools $
--             listUserPoolsResponse
--
--         , responseConfirmSignUp $
--             confirmSignUpResponse
--
--         , responseAdminLinkProviderForUser $
--             adminLinkProviderForUserResponse
--
--         , responseUpdateUserPool $
--             updateUserPoolResponse
--
--         , responseDeleteUserPool $
--             deleteUserPoolResponse
--
--         , responseUpdateUserPoolDomain $
--             updateUserPoolDomainResponse
--
--         , responseDeleteUserPoolDomain $
--             deleteUserPoolDomainResponse
--
--         , responseCreateUserPoolDomain $
--             createUserPoolDomainResponse
--
--         , responseChangePassword $
--             changePasswordResponse
--
--         , responseRespondToAuthChallenge $
--             respondToAuthChallengeResponse
--
--         , responseListDevices $
--             listDevicesResponse
--
--         , responseAdminGetDevice $
--             adminGetDeviceResponse
--
--         , responseCreateUserPool $
--             createUserPoolResponse
--
--         , responseAdminRemoveUserFromGroup $
--             adminRemoveUserFromGroupResponse
--
--         , responseSetRiskConfiguration $
--             setRiskConfigurationResponse
--
--         , responseListGroups $
--             listGroupsResponse
--
--         , responseUpdateIdentityProvider $
--             updateIdentityProviderResponse
--
--         , responseListIdentityProviders $
--             listIdentityProvidersResponse
--
--         , responseGetDevice $
--             getDeviceResponse
--
--         , responseDeleteIdentityProvider $
--             deleteIdentityProviderResponse
--
--         , responseAdminListDevices $
--             adminListDevicesResponse
--
--         , responseAdminConfirmSignUp $
--             adminConfirmSignUpResponse
--
--         , responseSetUICustomization $
--             setUICustomizationResponse
--
--         , responseAdminListUserAuthEvents $
--             adminListUserAuthEventsResponse
--
--         , responseAdminAddUserToGroup $
--             adminAddUserToGroupResponse
--
--         , responseVerifySoftwareToken $
--             verifySoftwareTokenResponse
--
--         , responseStopUserImportJob $
--             stopUserImportJobResponse
--
--         , responseCreateIdentityProvider $
--             createIdentityProviderResponse
--
--         , responseInitiateAuth $
--             initiateAuthResponse
--
--         , responseAdminSetUserPassword $
--             adminSetUserPasswordResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseAdminListGroupsForUser $
--             adminListGroupsForUserResponse
--
--         , responseAdminUpdateAuthEventFeedback $
--             adminUpdateAuthEventFeedbackResponse
--
--         , responseCreateGroup $
--             createGroupResponse
--
--         , responseStartUserImportJob $
--             startUserImportJobResponse
--
--         , responseDescribeUserPoolDomain $
--             describeUserPoolDomainResponse
--
--         , responseListUsersInGroup $
--             listUsersInGroupResponse
--
--         , responseAdminUserGlobalSignOut $
--             adminUserGlobalSignOutResponse
--
--         , responseDescribeUserPool $
--             describeUserPoolResponse
--
--         , responseAdminGetUser $
--             adminGetUserResponse
--
--         , responseGetSigningCertificate $
--             getSigningCertificateResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseAssociateSoftwareToken $
--             associateSoftwareTokenResponse
--
--         , responseForgotPassword $
--             forgotPasswordResponse
--
--         , responseUpdateDeviceStatus $
--             updateDeviceStatusResponse
--
--         , responseDeleteUserPoolClient $
--             deleteUserPoolClientResponse
--
--         , responseUpdateUserPoolClient $
--             updateUserPoolClientResponse
--
--         , responseForgetDevice $
--             forgetDeviceResponse
--
--         , responseAdminDisableUser $
--             adminDisableUserResponse
--
--         , responseAdminCreateUser $
--             adminCreateUserResponse
--
--         , responseAdminUpdateDeviceStatus $
--             adminUpdateDeviceStatusResponse
--
--         , responseAdminForgetDevice $
--             adminForgetDeviceResponse
--
--         , responseDescribeIdentityProvider $
--             describeIdentityProviderResponse
--
--         , responseListUserImportJobs $
--             listUserImportJobsResponse
--
--         , responseGetUICustomization $
--             getUICustomizationResponse
--
--         , responseGetCSVHeader $
--             getCSVHeaderResponse
--
--         , responseAdminEnableUser $
--             adminEnableUserResponse
--
--         , responseAdminInitiateAuth $
--             adminInitiateAuthResponse
--
--         , responseAdminResetUserPassword $
--             adminResetUserPasswordResponse
--
--         , responseGetIdentityProviderByIdentifier $
--             getIdentityProviderByIdentifierResponse
--
--         , responseAdminSetUserSettings $
--             adminSetUserSettingsResponse
--
--         , responseDescribeUserPoolClient $
--             describeUserPoolClientResponse
--
--         , responseGetGroup $
--             getGroupResponse
--
--         , responseResendConfirmationCode $
--             resendConfirmationCodeResponse
--
--         , responseAdminRespondToAuthChallenge $
--             adminRespondToAuthChallengeResponse
--
--         , responseSignUp $
--             signUpResponse
--
--         , responseDescribeUserImportJob $
--             describeUserImportJobResponse
--
--         , responseUpdateGroup $
--             updateGroupResponse
--
--         , responseUpdateResourceServer $
--             updateResourceServerResponse
--
--         , responseDeleteGroup $
--             deleteGroupResponse
--
--         , responseSetUserSettings $
--             setUserSettingsResponse
--
--         , responseListResourceServers $
--             listResourceServersResponse
--
--         , responseDeleteResourceServer $
--             deleteResourceServerResponse
--
--         , responseDescribeRiskConfiguration $
--             describeRiskConfigurationResponse
--
--         , responseGlobalSignOut $
--             globalSignOutResponse
--
--         , responseGetUserPoolMFAConfig $
--             getUserPoolMFAConfigResponse
--
--         , responseCreateResourceServer $
--             createResourceServerResponse
--
--         , responseAdminUpdateUserAttributes $
--             adminUpdateUserAttributesResponse
--
--         , responseDeleteUser $
--             deleteUserResponse
--
--         , responseAdminDeleteUserAttributes $
--             adminDeleteUserAttributesResponse
--
--         , responseListUsers $
--             listUsersResponse
--
--         , responseAdminDisableProviderForUser $
--             adminDisableProviderForUserResponse
--
--         , responseCreateUserPoolClient $
--             createUserPoolClientResponse
--
--         , responseListUserPoolClients $
--             listUserPoolClientsResponse
--
--         , responseAddCustomAttributes $
--             addCustomAttributesResponse
--
--         , responseAdminSetUserMFAPreference $
--             adminSetUserMFAPreferenceResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseConfirmForgotPassword $
--             confirmForgotPasswordResponse
--
--         , responseSetUserMFAPreference $
--             setUserMFAPreferenceResponse
--
--         , responseVerifyUserAttribute $
--             verifyUserAttributeResponse
--
--         , responseConfirmDevice $
--             confirmDeviceResponse
--
--         , responseDescribeResourceServer $
--             describeResourceServerResponse
--
--           ]
--     ]

-- Requests

requestGetUserAttributeVerificationCode :: GetUserAttributeVerificationCode -> TestTree
requestGetUserAttributeVerificationCode =
  req
    "GetUserAttributeVerificationCode"
    "fixture/GetUserAttributeVerificationCode.yaml"

requestAdminDeleteUser :: AdminDeleteUser -> TestTree
requestAdminDeleteUser =
  req
    "AdminDeleteUser"
    "fixture/AdminDeleteUser.yaml"

requestCreateUserImportJob :: CreateUserImportJob -> TestTree
requestCreateUserImportJob =
  req
    "CreateUserImportJob"
    "fixture/CreateUserImportJob.yaml"

requestGetUser :: GetUser -> TestTree
requestGetUser =
  req
    "GetUser"
    "fixture/GetUser.yaml"

requestSetUserPoolMFAConfig :: SetUserPoolMFAConfig -> TestTree
requestSetUserPoolMFAConfig =
  req
    "SetUserPoolMFAConfig"
    "fixture/SetUserPoolMFAConfig.yaml"

requestUpdateUserAttributes :: UpdateUserAttributes -> TestTree
requestUpdateUserAttributes =
  req
    "UpdateUserAttributes"
    "fixture/UpdateUserAttributes.yaml"

requestDeleteUserAttributes :: DeleteUserAttributes -> TestTree
requestDeleteUserAttributes =
  req
    "DeleteUserAttributes"
    "fixture/DeleteUserAttributes.yaml"

requestUpdateAuthEventFeedback :: UpdateAuthEventFeedback -> TestTree
requestUpdateAuthEventFeedback =
  req
    "UpdateAuthEventFeedback"
    "fixture/UpdateAuthEventFeedback.yaml"

requestListUserPools :: ListUserPools -> TestTree
requestListUserPools =
  req
    "ListUserPools"
    "fixture/ListUserPools.yaml"

requestConfirmSignUp :: ConfirmSignUp -> TestTree
requestConfirmSignUp =
  req
    "ConfirmSignUp"
    "fixture/ConfirmSignUp.yaml"

requestAdminLinkProviderForUser :: AdminLinkProviderForUser -> TestTree
requestAdminLinkProviderForUser =
  req
    "AdminLinkProviderForUser"
    "fixture/AdminLinkProviderForUser.yaml"

requestUpdateUserPool :: UpdateUserPool -> TestTree
requestUpdateUserPool =
  req
    "UpdateUserPool"
    "fixture/UpdateUserPool.yaml"

requestDeleteUserPool :: DeleteUserPool -> TestTree
requestDeleteUserPool =
  req
    "DeleteUserPool"
    "fixture/DeleteUserPool.yaml"

requestUpdateUserPoolDomain :: UpdateUserPoolDomain -> TestTree
requestUpdateUserPoolDomain =
  req
    "UpdateUserPoolDomain"
    "fixture/UpdateUserPoolDomain.yaml"

requestDeleteUserPoolDomain :: DeleteUserPoolDomain -> TestTree
requestDeleteUserPoolDomain =
  req
    "DeleteUserPoolDomain"
    "fixture/DeleteUserPoolDomain.yaml"

requestCreateUserPoolDomain :: CreateUserPoolDomain -> TestTree
requestCreateUserPoolDomain =
  req
    "CreateUserPoolDomain"
    "fixture/CreateUserPoolDomain.yaml"

requestChangePassword :: ChangePassword -> TestTree
requestChangePassword =
  req
    "ChangePassword"
    "fixture/ChangePassword.yaml"

requestRespondToAuthChallenge :: RespondToAuthChallenge -> TestTree
requestRespondToAuthChallenge =
  req
    "RespondToAuthChallenge"
    "fixture/RespondToAuthChallenge.yaml"

requestListDevices :: ListDevices -> TestTree
requestListDevices =
  req
    "ListDevices"
    "fixture/ListDevices.yaml"

requestAdminGetDevice :: AdminGetDevice -> TestTree
requestAdminGetDevice =
  req
    "AdminGetDevice"
    "fixture/AdminGetDevice.yaml"

requestCreateUserPool :: CreateUserPool -> TestTree
requestCreateUserPool =
  req
    "CreateUserPool"
    "fixture/CreateUserPool.yaml"

requestAdminRemoveUserFromGroup :: AdminRemoveUserFromGroup -> TestTree
requestAdminRemoveUserFromGroup =
  req
    "AdminRemoveUserFromGroup"
    "fixture/AdminRemoveUserFromGroup.yaml"

requestSetRiskConfiguration :: SetRiskConfiguration -> TestTree
requestSetRiskConfiguration =
  req
    "SetRiskConfiguration"
    "fixture/SetRiskConfiguration.yaml"

requestListGroups :: ListGroups -> TestTree
requestListGroups =
  req
    "ListGroups"
    "fixture/ListGroups.yaml"

requestUpdateIdentityProvider :: UpdateIdentityProvider -> TestTree
requestUpdateIdentityProvider =
  req
    "UpdateIdentityProvider"
    "fixture/UpdateIdentityProvider.yaml"

requestListIdentityProviders :: ListIdentityProviders -> TestTree
requestListIdentityProviders =
  req
    "ListIdentityProviders"
    "fixture/ListIdentityProviders.yaml"

requestGetDevice :: GetDevice -> TestTree
requestGetDevice =
  req
    "GetDevice"
    "fixture/GetDevice.yaml"

requestDeleteIdentityProvider :: DeleteIdentityProvider -> TestTree
requestDeleteIdentityProvider =
  req
    "DeleteIdentityProvider"
    "fixture/DeleteIdentityProvider.yaml"

requestAdminListDevices :: AdminListDevices -> TestTree
requestAdminListDevices =
  req
    "AdminListDevices"
    "fixture/AdminListDevices.yaml"

requestAdminConfirmSignUp :: AdminConfirmSignUp -> TestTree
requestAdminConfirmSignUp =
  req
    "AdminConfirmSignUp"
    "fixture/AdminConfirmSignUp.yaml"

requestSetUICustomization :: SetUICustomization -> TestTree
requestSetUICustomization =
  req
    "SetUICustomization"
    "fixture/SetUICustomization.yaml"

requestAdminListUserAuthEvents :: AdminListUserAuthEvents -> TestTree
requestAdminListUserAuthEvents =
  req
    "AdminListUserAuthEvents"
    "fixture/AdminListUserAuthEvents.yaml"

requestAdminAddUserToGroup :: AdminAddUserToGroup -> TestTree
requestAdminAddUserToGroup =
  req
    "AdminAddUserToGroup"
    "fixture/AdminAddUserToGroup.yaml"

requestVerifySoftwareToken :: VerifySoftwareToken -> TestTree
requestVerifySoftwareToken =
  req
    "VerifySoftwareToken"
    "fixture/VerifySoftwareToken.yaml"

requestStopUserImportJob :: StopUserImportJob -> TestTree
requestStopUserImportJob =
  req
    "StopUserImportJob"
    "fixture/StopUserImportJob.yaml"

requestCreateIdentityProvider :: CreateIdentityProvider -> TestTree
requestCreateIdentityProvider =
  req
    "CreateIdentityProvider"
    "fixture/CreateIdentityProvider.yaml"

requestInitiateAuth :: InitiateAuth -> TestTree
requestInitiateAuth =
  req
    "InitiateAuth"
    "fixture/InitiateAuth.yaml"

requestAdminSetUserPassword :: AdminSetUserPassword -> TestTree
requestAdminSetUserPassword =
  req
    "AdminSetUserPassword"
    "fixture/AdminSetUserPassword.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestAdminListGroupsForUser :: AdminListGroupsForUser -> TestTree
requestAdminListGroupsForUser =
  req
    "AdminListGroupsForUser"
    "fixture/AdminListGroupsForUser.yaml"

requestAdminUpdateAuthEventFeedback :: AdminUpdateAuthEventFeedback -> TestTree
requestAdminUpdateAuthEventFeedback =
  req
    "AdminUpdateAuthEventFeedback"
    "fixture/AdminUpdateAuthEventFeedback.yaml"

requestCreateGroup :: CreateGroup -> TestTree
requestCreateGroup =
  req
    "CreateGroup"
    "fixture/CreateGroup.yaml"

requestStartUserImportJob :: StartUserImportJob -> TestTree
requestStartUserImportJob =
  req
    "StartUserImportJob"
    "fixture/StartUserImportJob.yaml"

requestDescribeUserPoolDomain :: DescribeUserPoolDomain -> TestTree
requestDescribeUserPoolDomain =
  req
    "DescribeUserPoolDomain"
    "fixture/DescribeUserPoolDomain.yaml"

requestListUsersInGroup :: ListUsersInGroup -> TestTree
requestListUsersInGroup =
  req
    "ListUsersInGroup"
    "fixture/ListUsersInGroup.yaml"

requestAdminUserGlobalSignOut :: AdminUserGlobalSignOut -> TestTree
requestAdminUserGlobalSignOut =
  req
    "AdminUserGlobalSignOut"
    "fixture/AdminUserGlobalSignOut.yaml"

requestDescribeUserPool :: DescribeUserPool -> TestTree
requestDescribeUserPool =
  req
    "DescribeUserPool"
    "fixture/DescribeUserPool.yaml"

requestAdminGetUser :: AdminGetUser -> TestTree
requestAdminGetUser =
  req
    "AdminGetUser"
    "fixture/AdminGetUser.yaml"

requestGetSigningCertificate :: GetSigningCertificate -> TestTree
requestGetSigningCertificate =
  req
    "GetSigningCertificate"
    "fixture/GetSigningCertificate.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestAssociateSoftwareToken :: AssociateSoftwareToken -> TestTree
requestAssociateSoftwareToken =
  req
    "AssociateSoftwareToken"
    "fixture/AssociateSoftwareToken.yaml"

requestForgotPassword :: ForgotPassword -> TestTree
requestForgotPassword =
  req
    "ForgotPassword"
    "fixture/ForgotPassword.yaml"

requestUpdateDeviceStatus :: UpdateDeviceStatus -> TestTree
requestUpdateDeviceStatus =
  req
    "UpdateDeviceStatus"
    "fixture/UpdateDeviceStatus.yaml"

requestDeleteUserPoolClient :: DeleteUserPoolClient -> TestTree
requestDeleteUserPoolClient =
  req
    "DeleteUserPoolClient"
    "fixture/DeleteUserPoolClient.yaml"

requestUpdateUserPoolClient :: UpdateUserPoolClient -> TestTree
requestUpdateUserPoolClient =
  req
    "UpdateUserPoolClient"
    "fixture/UpdateUserPoolClient.yaml"

requestForgetDevice :: ForgetDevice -> TestTree
requestForgetDevice =
  req
    "ForgetDevice"
    "fixture/ForgetDevice.yaml"

requestAdminDisableUser :: AdminDisableUser -> TestTree
requestAdminDisableUser =
  req
    "AdminDisableUser"
    "fixture/AdminDisableUser.yaml"

requestAdminCreateUser :: AdminCreateUser -> TestTree
requestAdminCreateUser =
  req
    "AdminCreateUser"
    "fixture/AdminCreateUser.yaml"

requestAdminUpdateDeviceStatus :: AdminUpdateDeviceStatus -> TestTree
requestAdminUpdateDeviceStatus =
  req
    "AdminUpdateDeviceStatus"
    "fixture/AdminUpdateDeviceStatus.yaml"

requestAdminForgetDevice :: AdminForgetDevice -> TestTree
requestAdminForgetDevice =
  req
    "AdminForgetDevice"
    "fixture/AdminForgetDevice.yaml"

requestDescribeIdentityProvider :: DescribeIdentityProvider -> TestTree
requestDescribeIdentityProvider =
  req
    "DescribeIdentityProvider"
    "fixture/DescribeIdentityProvider.yaml"

requestListUserImportJobs :: ListUserImportJobs -> TestTree
requestListUserImportJobs =
  req
    "ListUserImportJobs"
    "fixture/ListUserImportJobs.yaml"

requestGetUICustomization :: GetUICustomization -> TestTree
requestGetUICustomization =
  req
    "GetUICustomization"
    "fixture/GetUICustomization.yaml"

requestGetCSVHeader :: GetCSVHeader -> TestTree
requestGetCSVHeader =
  req
    "GetCSVHeader"
    "fixture/GetCSVHeader.yaml"

requestAdminEnableUser :: AdminEnableUser -> TestTree
requestAdminEnableUser =
  req
    "AdminEnableUser"
    "fixture/AdminEnableUser.yaml"

requestAdminInitiateAuth :: AdminInitiateAuth -> TestTree
requestAdminInitiateAuth =
  req
    "AdminInitiateAuth"
    "fixture/AdminInitiateAuth.yaml"

requestAdminResetUserPassword :: AdminResetUserPassword -> TestTree
requestAdminResetUserPassword =
  req
    "AdminResetUserPassword"
    "fixture/AdminResetUserPassword.yaml"

requestGetIdentityProviderByIdentifier :: GetIdentityProviderByIdentifier -> TestTree
requestGetIdentityProviderByIdentifier =
  req
    "GetIdentityProviderByIdentifier"
    "fixture/GetIdentityProviderByIdentifier.yaml"

requestAdminSetUserSettings :: AdminSetUserSettings -> TestTree
requestAdminSetUserSettings =
  req
    "AdminSetUserSettings"
    "fixture/AdminSetUserSettings.yaml"

requestDescribeUserPoolClient :: DescribeUserPoolClient -> TestTree
requestDescribeUserPoolClient =
  req
    "DescribeUserPoolClient"
    "fixture/DescribeUserPoolClient.yaml"

requestGetGroup :: GetGroup -> TestTree
requestGetGroup =
  req
    "GetGroup"
    "fixture/GetGroup.yaml"

requestResendConfirmationCode :: ResendConfirmationCode -> TestTree
requestResendConfirmationCode =
  req
    "ResendConfirmationCode"
    "fixture/ResendConfirmationCode.yaml"

requestAdminRespondToAuthChallenge :: AdminRespondToAuthChallenge -> TestTree
requestAdminRespondToAuthChallenge =
  req
    "AdminRespondToAuthChallenge"
    "fixture/AdminRespondToAuthChallenge.yaml"

requestSignUp :: SignUp -> TestTree
requestSignUp =
  req
    "SignUp"
    "fixture/SignUp.yaml"

requestDescribeUserImportJob :: DescribeUserImportJob -> TestTree
requestDescribeUserImportJob =
  req
    "DescribeUserImportJob"
    "fixture/DescribeUserImportJob.yaml"

requestUpdateGroup :: UpdateGroup -> TestTree
requestUpdateGroup =
  req
    "UpdateGroup"
    "fixture/UpdateGroup.yaml"

requestUpdateResourceServer :: UpdateResourceServer -> TestTree
requestUpdateResourceServer =
  req
    "UpdateResourceServer"
    "fixture/UpdateResourceServer.yaml"

requestDeleteGroup :: DeleteGroup -> TestTree
requestDeleteGroup =
  req
    "DeleteGroup"
    "fixture/DeleteGroup.yaml"

requestSetUserSettings :: SetUserSettings -> TestTree
requestSetUserSettings =
  req
    "SetUserSettings"
    "fixture/SetUserSettings.yaml"

requestListResourceServers :: ListResourceServers -> TestTree
requestListResourceServers =
  req
    "ListResourceServers"
    "fixture/ListResourceServers.yaml"

requestDeleteResourceServer :: DeleteResourceServer -> TestTree
requestDeleteResourceServer =
  req
    "DeleteResourceServer"
    "fixture/DeleteResourceServer.yaml"

requestDescribeRiskConfiguration :: DescribeRiskConfiguration -> TestTree
requestDescribeRiskConfiguration =
  req
    "DescribeRiskConfiguration"
    "fixture/DescribeRiskConfiguration.yaml"

requestGlobalSignOut :: GlobalSignOut -> TestTree
requestGlobalSignOut =
  req
    "GlobalSignOut"
    "fixture/GlobalSignOut.yaml"

requestGetUserPoolMFAConfig :: GetUserPoolMFAConfig -> TestTree
requestGetUserPoolMFAConfig =
  req
    "GetUserPoolMFAConfig"
    "fixture/GetUserPoolMFAConfig.yaml"

requestCreateResourceServer :: CreateResourceServer -> TestTree
requestCreateResourceServer =
  req
    "CreateResourceServer"
    "fixture/CreateResourceServer.yaml"

requestAdminUpdateUserAttributes :: AdminUpdateUserAttributes -> TestTree
requestAdminUpdateUserAttributes =
  req
    "AdminUpdateUserAttributes"
    "fixture/AdminUpdateUserAttributes.yaml"

requestDeleteUser :: DeleteUser -> TestTree
requestDeleteUser =
  req
    "DeleteUser"
    "fixture/DeleteUser.yaml"

requestAdminDeleteUserAttributes :: AdminDeleteUserAttributes -> TestTree
requestAdminDeleteUserAttributes =
  req
    "AdminDeleteUserAttributes"
    "fixture/AdminDeleteUserAttributes.yaml"

requestListUsers :: ListUsers -> TestTree
requestListUsers =
  req
    "ListUsers"
    "fixture/ListUsers.yaml"

requestAdminDisableProviderForUser :: AdminDisableProviderForUser -> TestTree
requestAdminDisableProviderForUser =
  req
    "AdminDisableProviderForUser"
    "fixture/AdminDisableProviderForUser.yaml"

requestCreateUserPoolClient :: CreateUserPoolClient -> TestTree
requestCreateUserPoolClient =
  req
    "CreateUserPoolClient"
    "fixture/CreateUserPoolClient.yaml"

requestListUserPoolClients :: ListUserPoolClients -> TestTree
requestListUserPoolClients =
  req
    "ListUserPoolClients"
    "fixture/ListUserPoolClients.yaml"

requestAddCustomAttributes :: AddCustomAttributes -> TestTree
requestAddCustomAttributes =
  req
    "AddCustomAttributes"
    "fixture/AddCustomAttributes.yaml"

requestAdminSetUserMFAPreference :: AdminSetUserMFAPreference -> TestTree
requestAdminSetUserMFAPreference =
  req
    "AdminSetUserMFAPreference"
    "fixture/AdminSetUserMFAPreference.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestConfirmForgotPassword :: ConfirmForgotPassword -> TestTree
requestConfirmForgotPassword =
  req
    "ConfirmForgotPassword"
    "fixture/ConfirmForgotPassword.yaml"

requestSetUserMFAPreference :: SetUserMFAPreference -> TestTree
requestSetUserMFAPreference =
  req
    "SetUserMFAPreference"
    "fixture/SetUserMFAPreference.yaml"

requestVerifyUserAttribute :: VerifyUserAttribute -> TestTree
requestVerifyUserAttribute =
  req
    "VerifyUserAttribute"
    "fixture/VerifyUserAttribute.yaml"

requestConfirmDevice :: ConfirmDevice -> TestTree
requestConfirmDevice =
  req
    "ConfirmDevice"
    "fixture/ConfirmDevice.yaml"

requestDescribeResourceServer :: DescribeResourceServer -> TestTree
requestDescribeResourceServer =
  req
    "DescribeResourceServer"
    "fixture/DescribeResourceServer.yaml"

-- Responses

responseGetUserAttributeVerificationCode :: GetUserAttributeVerificationCodeResponse -> TestTree
responseGetUserAttributeVerificationCode =
  res
    "GetUserAttributeVerificationCodeResponse"
    "fixture/GetUserAttributeVerificationCodeResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy GetUserAttributeVerificationCode)

responseAdminDeleteUser :: AdminDeleteUserResponse -> TestTree
responseAdminDeleteUser =
  res
    "AdminDeleteUserResponse"
    "fixture/AdminDeleteUserResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminDeleteUser)

responseCreateUserImportJob :: CreateUserImportJobResponse -> TestTree
responseCreateUserImportJob =
  res
    "CreateUserImportJobResponse"
    "fixture/CreateUserImportJobResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy CreateUserImportJob)

responseGetUser :: GetUserResponse -> TestTree
responseGetUser =
  res
    "GetUserResponse"
    "fixture/GetUserResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy GetUser)

responseSetUserPoolMFAConfig :: SetUserPoolMFAConfigResponse -> TestTree
responseSetUserPoolMFAConfig =
  res
    "SetUserPoolMFAConfigResponse"
    "fixture/SetUserPoolMFAConfigResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy SetUserPoolMFAConfig)

responseUpdateUserAttributes :: UpdateUserAttributesResponse -> TestTree
responseUpdateUserAttributes =
  res
    "UpdateUserAttributesResponse"
    "fixture/UpdateUserAttributesResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy UpdateUserAttributes)

responseDeleteUserAttributes :: DeleteUserAttributesResponse -> TestTree
responseDeleteUserAttributes =
  res
    "DeleteUserAttributesResponse"
    "fixture/DeleteUserAttributesResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy DeleteUserAttributes)

responseUpdateAuthEventFeedback :: UpdateAuthEventFeedbackResponse -> TestTree
responseUpdateAuthEventFeedback =
  res
    "UpdateAuthEventFeedbackResponse"
    "fixture/UpdateAuthEventFeedbackResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy UpdateAuthEventFeedback)

responseListUserPools :: ListUserPoolsResponse -> TestTree
responseListUserPools =
  res
    "ListUserPoolsResponse"
    "fixture/ListUserPoolsResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ListUserPools)

responseConfirmSignUp :: ConfirmSignUpResponse -> TestTree
responseConfirmSignUp =
  res
    "ConfirmSignUpResponse"
    "fixture/ConfirmSignUpResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ConfirmSignUp)

responseAdminLinkProviderForUser :: AdminLinkProviderForUserResponse -> TestTree
responseAdminLinkProviderForUser =
  res
    "AdminLinkProviderForUserResponse"
    "fixture/AdminLinkProviderForUserResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminLinkProviderForUser)

responseUpdateUserPool :: UpdateUserPoolResponse -> TestTree
responseUpdateUserPool =
  res
    "UpdateUserPoolResponse"
    "fixture/UpdateUserPoolResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy UpdateUserPool)

responseDeleteUserPool :: DeleteUserPoolResponse -> TestTree
responseDeleteUserPool =
  res
    "DeleteUserPoolResponse"
    "fixture/DeleteUserPoolResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy DeleteUserPool)

responseUpdateUserPoolDomain :: UpdateUserPoolDomainResponse -> TestTree
responseUpdateUserPoolDomain =
  res
    "UpdateUserPoolDomainResponse"
    "fixture/UpdateUserPoolDomainResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy UpdateUserPoolDomain)

responseDeleteUserPoolDomain :: DeleteUserPoolDomainResponse -> TestTree
responseDeleteUserPoolDomain =
  res
    "DeleteUserPoolDomainResponse"
    "fixture/DeleteUserPoolDomainResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy DeleteUserPoolDomain)

responseCreateUserPoolDomain :: CreateUserPoolDomainResponse -> TestTree
responseCreateUserPoolDomain =
  res
    "CreateUserPoolDomainResponse"
    "fixture/CreateUserPoolDomainResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy CreateUserPoolDomain)

responseChangePassword :: ChangePasswordResponse -> TestTree
responseChangePassword =
  res
    "ChangePasswordResponse"
    "fixture/ChangePasswordResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ChangePassword)

responseRespondToAuthChallenge :: RespondToAuthChallengeResponse -> TestTree
responseRespondToAuthChallenge =
  res
    "RespondToAuthChallengeResponse"
    "fixture/RespondToAuthChallengeResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy RespondToAuthChallenge)

responseListDevices :: ListDevicesResponse -> TestTree
responseListDevices =
  res
    "ListDevicesResponse"
    "fixture/ListDevicesResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ListDevices)

responseAdminGetDevice :: AdminGetDeviceResponse -> TestTree
responseAdminGetDevice =
  res
    "AdminGetDeviceResponse"
    "fixture/AdminGetDeviceResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminGetDevice)

responseCreateUserPool :: CreateUserPoolResponse -> TestTree
responseCreateUserPool =
  res
    "CreateUserPoolResponse"
    "fixture/CreateUserPoolResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy CreateUserPool)

responseAdminRemoveUserFromGroup :: AdminRemoveUserFromGroupResponse -> TestTree
responseAdminRemoveUserFromGroup =
  res
    "AdminRemoveUserFromGroupResponse"
    "fixture/AdminRemoveUserFromGroupResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminRemoveUserFromGroup)

responseSetRiskConfiguration :: SetRiskConfigurationResponse -> TestTree
responseSetRiskConfiguration =
  res
    "SetRiskConfigurationResponse"
    "fixture/SetRiskConfigurationResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy SetRiskConfiguration)

responseListGroups :: ListGroupsResponse -> TestTree
responseListGroups =
  res
    "ListGroupsResponse"
    "fixture/ListGroupsResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ListGroups)

responseUpdateIdentityProvider :: UpdateIdentityProviderResponse -> TestTree
responseUpdateIdentityProvider =
  res
    "UpdateIdentityProviderResponse"
    "fixture/UpdateIdentityProviderResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy UpdateIdentityProvider)

responseListIdentityProviders :: ListIdentityProvidersResponse -> TestTree
responseListIdentityProviders =
  res
    "ListIdentityProvidersResponse"
    "fixture/ListIdentityProvidersResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ListIdentityProviders)

responseGetDevice :: GetDeviceResponse -> TestTree
responseGetDevice =
  res
    "GetDeviceResponse"
    "fixture/GetDeviceResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy GetDevice)

responseDeleteIdentityProvider :: DeleteIdentityProviderResponse -> TestTree
responseDeleteIdentityProvider =
  res
    "DeleteIdentityProviderResponse"
    "fixture/DeleteIdentityProviderResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy DeleteIdentityProvider)

responseAdminListDevices :: AdminListDevicesResponse -> TestTree
responseAdminListDevices =
  res
    "AdminListDevicesResponse"
    "fixture/AdminListDevicesResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminListDevices)

responseAdminConfirmSignUp :: AdminConfirmSignUpResponse -> TestTree
responseAdminConfirmSignUp =
  res
    "AdminConfirmSignUpResponse"
    "fixture/AdminConfirmSignUpResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminConfirmSignUp)

responseSetUICustomization :: SetUICustomizationResponse -> TestTree
responseSetUICustomization =
  res
    "SetUICustomizationResponse"
    "fixture/SetUICustomizationResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy SetUICustomization)

responseAdminListUserAuthEvents :: AdminListUserAuthEventsResponse -> TestTree
responseAdminListUserAuthEvents =
  res
    "AdminListUserAuthEventsResponse"
    "fixture/AdminListUserAuthEventsResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminListUserAuthEvents)

responseAdminAddUserToGroup :: AdminAddUserToGroupResponse -> TestTree
responseAdminAddUserToGroup =
  res
    "AdminAddUserToGroupResponse"
    "fixture/AdminAddUserToGroupResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminAddUserToGroup)

responseVerifySoftwareToken :: VerifySoftwareTokenResponse -> TestTree
responseVerifySoftwareToken =
  res
    "VerifySoftwareTokenResponse"
    "fixture/VerifySoftwareTokenResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy VerifySoftwareToken)

responseStopUserImportJob :: StopUserImportJobResponse -> TestTree
responseStopUserImportJob =
  res
    "StopUserImportJobResponse"
    "fixture/StopUserImportJobResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy StopUserImportJob)

responseCreateIdentityProvider :: CreateIdentityProviderResponse -> TestTree
responseCreateIdentityProvider =
  res
    "CreateIdentityProviderResponse"
    "fixture/CreateIdentityProviderResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy CreateIdentityProvider)

responseInitiateAuth :: InitiateAuthResponse -> TestTree
responseInitiateAuth =
  res
    "InitiateAuthResponse"
    "fixture/InitiateAuthResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy InitiateAuth)

responseAdminSetUserPassword :: AdminSetUserPasswordResponse -> TestTree
responseAdminSetUserPassword =
  res
    "AdminSetUserPasswordResponse"
    "fixture/AdminSetUserPasswordResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminSetUserPassword)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy UntagResource)

responseAdminListGroupsForUser :: AdminListGroupsForUserResponse -> TestTree
responseAdminListGroupsForUser =
  res
    "AdminListGroupsForUserResponse"
    "fixture/AdminListGroupsForUserResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminListGroupsForUser)

responseAdminUpdateAuthEventFeedback :: AdminUpdateAuthEventFeedbackResponse -> TestTree
responseAdminUpdateAuthEventFeedback =
  res
    "AdminUpdateAuthEventFeedbackResponse"
    "fixture/AdminUpdateAuthEventFeedbackResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminUpdateAuthEventFeedback)

responseCreateGroup :: CreateGroupResponse -> TestTree
responseCreateGroup =
  res
    "CreateGroupResponse"
    "fixture/CreateGroupResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy CreateGroup)

responseStartUserImportJob :: StartUserImportJobResponse -> TestTree
responseStartUserImportJob =
  res
    "StartUserImportJobResponse"
    "fixture/StartUserImportJobResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy StartUserImportJob)

responseDescribeUserPoolDomain :: DescribeUserPoolDomainResponse -> TestTree
responseDescribeUserPoolDomain =
  res
    "DescribeUserPoolDomainResponse"
    "fixture/DescribeUserPoolDomainResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy DescribeUserPoolDomain)

responseListUsersInGroup :: ListUsersInGroupResponse -> TestTree
responseListUsersInGroup =
  res
    "ListUsersInGroupResponse"
    "fixture/ListUsersInGroupResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ListUsersInGroup)

responseAdminUserGlobalSignOut :: AdminUserGlobalSignOutResponse -> TestTree
responseAdminUserGlobalSignOut =
  res
    "AdminUserGlobalSignOutResponse"
    "fixture/AdminUserGlobalSignOutResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminUserGlobalSignOut)

responseDescribeUserPool :: DescribeUserPoolResponse -> TestTree
responseDescribeUserPool =
  res
    "DescribeUserPoolResponse"
    "fixture/DescribeUserPoolResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy DescribeUserPool)

responseAdminGetUser :: AdminGetUserResponse -> TestTree
responseAdminGetUser =
  res
    "AdminGetUserResponse"
    "fixture/AdminGetUserResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminGetUser)

responseGetSigningCertificate :: GetSigningCertificateResponse -> TestTree
responseGetSigningCertificate =
  res
    "GetSigningCertificateResponse"
    "fixture/GetSigningCertificateResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy GetSigningCertificate)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy TagResource)

responseAssociateSoftwareToken :: AssociateSoftwareTokenResponse -> TestTree
responseAssociateSoftwareToken =
  res
    "AssociateSoftwareTokenResponse"
    "fixture/AssociateSoftwareTokenResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AssociateSoftwareToken)

responseForgotPassword :: ForgotPasswordResponse -> TestTree
responseForgotPassword =
  res
    "ForgotPasswordResponse"
    "fixture/ForgotPasswordResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ForgotPassword)

responseUpdateDeviceStatus :: UpdateDeviceStatusResponse -> TestTree
responseUpdateDeviceStatus =
  res
    "UpdateDeviceStatusResponse"
    "fixture/UpdateDeviceStatusResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy UpdateDeviceStatus)

responseDeleteUserPoolClient :: DeleteUserPoolClientResponse -> TestTree
responseDeleteUserPoolClient =
  res
    "DeleteUserPoolClientResponse"
    "fixture/DeleteUserPoolClientResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy DeleteUserPoolClient)

responseUpdateUserPoolClient :: UpdateUserPoolClientResponse -> TestTree
responseUpdateUserPoolClient =
  res
    "UpdateUserPoolClientResponse"
    "fixture/UpdateUserPoolClientResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy UpdateUserPoolClient)

responseForgetDevice :: ForgetDeviceResponse -> TestTree
responseForgetDevice =
  res
    "ForgetDeviceResponse"
    "fixture/ForgetDeviceResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ForgetDevice)

responseAdminDisableUser :: AdminDisableUserResponse -> TestTree
responseAdminDisableUser =
  res
    "AdminDisableUserResponse"
    "fixture/AdminDisableUserResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminDisableUser)

responseAdminCreateUser :: AdminCreateUserResponse -> TestTree
responseAdminCreateUser =
  res
    "AdminCreateUserResponse"
    "fixture/AdminCreateUserResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminCreateUser)

responseAdminUpdateDeviceStatus :: AdminUpdateDeviceStatusResponse -> TestTree
responseAdminUpdateDeviceStatus =
  res
    "AdminUpdateDeviceStatusResponse"
    "fixture/AdminUpdateDeviceStatusResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminUpdateDeviceStatus)

responseAdminForgetDevice :: AdminForgetDeviceResponse -> TestTree
responseAdminForgetDevice =
  res
    "AdminForgetDeviceResponse"
    "fixture/AdminForgetDeviceResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminForgetDevice)

responseDescribeIdentityProvider :: DescribeIdentityProviderResponse -> TestTree
responseDescribeIdentityProvider =
  res
    "DescribeIdentityProviderResponse"
    "fixture/DescribeIdentityProviderResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy DescribeIdentityProvider)

responseListUserImportJobs :: ListUserImportJobsResponse -> TestTree
responseListUserImportJobs =
  res
    "ListUserImportJobsResponse"
    "fixture/ListUserImportJobsResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ListUserImportJobs)

responseGetUICustomization :: GetUICustomizationResponse -> TestTree
responseGetUICustomization =
  res
    "GetUICustomizationResponse"
    "fixture/GetUICustomizationResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy GetUICustomization)

responseGetCSVHeader :: GetCSVHeaderResponse -> TestTree
responseGetCSVHeader =
  res
    "GetCSVHeaderResponse"
    "fixture/GetCSVHeaderResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy GetCSVHeader)

responseAdminEnableUser :: AdminEnableUserResponse -> TestTree
responseAdminEnableUser =
  res
    "AdminEnableUserResponse"
    "fixture/AdminEnableUserResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminEnableUser)

responseAdminInitiateAuth :: AdminInitiateAuthResponse -> TestTree
responseAdminInitiateAuth =
  res
    "AdminInitiateAuthResponse"
    "fixture/AdminInitiateAuthResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminInitiateAuth)

responseAdminResetUserPassword :: AdminResetUserPasswordResponse -> TestTree
responseAdminResetUserPassword =
  res
    "AdminResetUserPasswordResponse"
    "fixture/AdminResetUserPasswordResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminResetUserPassword)

responseGetIdentityProviderByIdentifier :: GetIdentityProviderByIdentifierResponse -> TestTree
responseGetIdentityProviderByIdentifier =
  res
    "GetIdentityProviderByIdentifierResponse"
    "fixture/GetIdentityProviderByIdentifierResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy GetIdentityProviderByIdentifier)

responseAdminSetUserSettings :: AdminSetUserSettingsResponse -> TestTree
responseAdminSetUserSettings =
  res
    "AdminSetUserSettingsResponse"
    "fixture/AdminSetUserSettingsResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminSetUserSettings)

responseDescribeUserPoolClient :: DescribeUserPoolClientResponse -> TestTree
responseDescribeUserPoolClient =
  res
    "DescribeUserPoolClientResponse"
    "fixture/DescribeUserPoolClientResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy DescribeUserPoolClient)

responseGetGroup :: GetGroupResponse -> TestTree
responseGetGroup =
  res
    "GetGroupResponse"
    "fixture/GetGroupResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy GetGroup)

responseResendConfirmationCode :: ResendConfirmationCodeResponse -> TestTree
responseResendConfirmationCode =
  res
    "ResendConfirmationCodeResponse"
    "fixture/ResendConfirmationCodeResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ResendConfirmationCode)

responseAdminRespondToAuthChallenge :: AdminRespondToAuthChallengeResponse -> TestTree
responseAdminRespondToAuthChallenge =
  res
    "AdminRespondToAuthChallengeResponse"
    "fixture/AdminRespondToAuthChallengeResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminRespondToAuthChallenge)

responseSignUp :: SignUpResponse -> TestTree
responseSignUp =
  res
    "SignUpResponse"
    "fixture/SignUpResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy SignUp)

responseDescribeUserImportJob :: DescribeUserImportJobResponse -> TestTree
responseDescribeUserImportJob =
  res
    "DescribeUserImportJobResponse"
    "fixture/DescribeUserImportJobResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy DescribeUserImportJob)

responseUpdateGroup :: UpdateGroupResponse -> TestTree
responseUpdateGroup =
  res
    "UpdateGroupResponse"
    "fixture/UpdateGroupResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy UpdateGroup)

responseUpdateResourceServer :: UpdateResourceServerResponse -> TestTree
responseUpdateResourceServer =
  res
    "UpdateResourceServerResponse"
    "fixture/UpdateResourceServerResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy UpdateResourceServer)

responseDeleteGroup :: DeleteGroupResponse -> TestTree
responseDeleteGroup =
  res
    "DeleteGroupResponse"
    "fixture/DeleteGroupResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy DeleteGroup)

responseSetUserSettings :: SetUserSettingsResponse -> TestTree
responseSetUserSettings =
  res
    "SetUserSettingsResponse"
    "fixture/SetUserSettingsResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy SetUserSettings)

responseListResourceServers :: ListResourceServersResponse -> TestTree
responseListResourceServers =
  res
    "ListResourceServersResponse"
    "fixture/ListResourceServersResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ListResourceServers)

responseDeleteResourceServer :: DeleteResourceServerResponse -> TestTree
responseDeleteResourceServer =
  res
    "DeleteResourceServerResponse"
    "fixture/DeleteResourceServerResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy DeleteResourceServer)

responseDescribeRiskConfiguration :: DescribeRiskConfigurationResponse -> TestTree
responseDescribeRiskConfiguration =
  res
    "DescribeRiskConfigurationResponse"
    "fixture/DescribeRiskConfigurationResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy DescribeRiskConfiguration)

responseGlobalSignOut :: GlobalSignOutResponse -> TestTree
responseGlobalSignOut =
  res
    "GlobalSignOutResponse"
    "fixture/GlobalSignOutResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy GlobalSignOut)

responseGetUserPoolMFAConfig :: GetUserPoolMFAConfigResponse -> TestTree
responseGetUserPoolMFAConfig =
  res
    "GetUserPoolMFAConfigResponse"
    "fixture/GetUserPoolMFAConfigResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy GetUserPoolMFAConfig)

responseCreateResourceServer :: CreateResourceServerResponse -> TestTree
responseCreateResourceServer =
  res
    "CreateResourceServerResponse"
    "fixture/CreateResourceServerResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy CreateResourceServer)

responseAdminUpdateUserAttributes :: AdminUpdateUserAttributesResponse -> TestTree
responseAdminUpdateUserAttributes =
  res
    "AdminUpdateUserAttributesResponse"
    "fixture/AdminUpdateUserAttributesResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminUpdateUserAttributes)

responseDeleteUser :: DeleteUserResponse -> TestTree
responseDeleteUser =
  res
    "DeleteUserResponse"
    "fixture/DeleteUserResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy DeleteUser)

responseAdminDeleteUserAttributes :: AdminDeleteUserAttributesResponse -> TestTree
responseAdminDeleteUserAttributes =
  res
    "AdminDeleteUserAttributesResponse"
    "fixture/AdminDeleteUserAttributesResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminDeleteUserAttributes)

responseListUsers :: ListUsersResponse -> TestTree
responseListUsers =
  res
    "ListUsersResponse"
    "fixture/ListUsersResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ListUsers)

responseAdminDisableProviderForUser :: AdminDisableProviderForUserResponse -> TestTree
responseAdminDisableProviderForUser =
  res
    "AdminDisableProviderForUserResponse"
    "fixture/AdminDisableProviderForUserResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminDisableProviderForUser)

responseCreateUserPoolClient :: CreateUserPoolClientResponse -> TestTree
responseCreateUserPoolClient =
  res
    "CreateUserPoolClientResponse"
    "fixture/CreateUserPoolClientResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy CreateUserPoolClient)

responseListUserPoolClients :: ListUserPoolClientsResponse -> TestTree
responseListUserPoolClients =
  res
    "ListUserPoolClientsResponse"
    "fixture/ListUserPoolClientsResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ListUserPoolClients)

responseAddCustomAttributes :: AddCustomAttributesResponse -> TestTree
responseAddCustomAttributes =
  res
    "AddCustomAttributesResponse"
    "fixture/AddCustomAttributesResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AddCustomAttributes)

responseAdminSetUserMFAPreference :: AdminSetUserMFAPreferenceResponse -> TestTree
responseAdminSetUserMFAPreference =
  res
    "AdminSetUserMFAPreferenceResponse"
    "fixture/AdminSetUserMFAPreferenceResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy AdminSetUserMFAPreference)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ListTagsForResource)

responseConfirmForgotPassword :: ConfirmForgotPasswordResponse -> TestTree
responseConfirmForgotPassword =
  res
    "ConfirmForgotPasswordResponse"
    "fixture/ConfirmForgotPasswordResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ConfirmForgotPassword)

responseSetUserMFAPreference :: SetUserMFAPreferenceResponse -> TestTree
responseSetUserMFAPreference =
  res
    "SetUserMFAPreferenceResponse"
    "fixture/SetUserMFAPreferenceResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy SetUserMFAPreference)

responseVerifyUserAttribute :: VerifyUserAttributeResponse -> TestTree
responseVerifyUserAttribute =
  res
    "VerifyUserAttributeResponse"
    "fixture/VerifyUserAttributeResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy VerifyUserAttribute)

responseConfirmDevice :: ConfirmDeviceResponse -> TestTree
responseConfirmDevice =
  res
    "ConfirmDeviceResponse"
    "fixture/ConfirmDeviceResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy ConfirmDevice)

responseDescribeResourceServer :: DescribeResourceServerResponse -> TestTree
responseDescribeResourceServer =
  res
    "DescribeResourceServerResponse"
    "fixture/DescribeResourceServerResponse.proto"
    cognitoIdentityProvider
    (Proxy :: Proxy DescribeResourceServer)
