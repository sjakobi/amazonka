{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.UpdateAccountPasswordPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the password policy settings for the AWS account.
--
--
-- For more information about using a password policy, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html Managing an IAM password policy> in the /IAM User Guide/ .
module Network.AWS.IAM.UpdateAccountPasswordPolicy
  ( -- * Creating a Request
    updateAccountPasswordPolicy,
    UpdateAccountPasswordPolicy,

    -- * Request Lenses
    uappMaxPasswordAge,
    uappRequireLowercaseCharacters,
    uappMinimumPasswordLength,
    uappPasswordReusePrevention,
    uappRequireUppercaseCharacters,
    uappAllowUsersToChangePassword,
    uappHardExpiry,
    uappRequireSymbols,
    uappRequireNumbers,

    -- * Destructuring the Response
    updateAccountPasswordPolicyResponse,
    UpdateAccountPasswordPolicyResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateAccountPasswordPolicy' smart constructor.
data UpdateAccountPasswordPolicy = UpdateAccountPasswordPolicy'
  { _uappMaxPasswordAge ::
      !(Maybe Nat),
    _uappRequireLowercaseCharacters ::
      !(Maybe Bool),
    _uappMinimumPasswordLength ::
      !(Maybe Nat),
    _uappPasswordReusePrevention ::
      !(Maybe Nat),
    _uappRequireUppercaseCharacters ::
      !(Maybe Bool),
    _uappAllowUsersToChangePassword ::
      !(Maybe Bool),
    _uappHardExpiry ::
      !(Maybe Bool),
    _uappRequireSymbols ::
      !(Maybe Bool),
    _uappRequireNumbers ::
      !(Maybe Bool)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateAccountPasswordPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uappMaxPasswordAge' - The number of days that an IAM user password is valid. If you do not specify a value for this parameter, then the operation uses the default value of @0@ . The result is that IAM user passwords never expire.
--
-- * 'uappRequireLowercaseCharacters' - Specifies whether IAM user passwords must contain at least one lowercase character from the ISO basic Latin alphabet (a to z). If you do not specify a value for this parameter, then the operation uses the default value of @false@ . The result is that passwords do not require at least one lowercase character.
--
-- * 'uappMinimumPasswordLength' - The minimum number of characters allowed in an IAM user password. If you do not specify a value for this parameter, then the operation uses the default value of @6@ .
--
-- * 'uappPasswordReusePrevention' - Specifies the number of previous passwords that IAM users are prevented from reusing. If you do not specify a value for this parameter, then the operation uses the default value of @0@ . The result is that IAM users are not prevented from reusing previous passwords.
--
-- * 'uappRequireUppercaseCharacters' - Specifies whether IAM user passwords must contain at least one uppercase character from the ISO basic Latin alphabet (A to Z). If you do not specify a value for this parameter, then the operation uses the default value of @false@ . The result is that passwords do not require at least one uppercase character.
--
-- * 'uappAllowUsersToChangePassword' - Allows all IAM users in your account to use the AWS Management Console to change their own passwords. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/HowToPwdIAMUser.html Letting IAM users change their own passwords> in the /IAM User Guide/ . If you do not specify a value for this parameter, then the operation uses the default value of @false@ . The result is that IAM users in the account do not automatically have permissions to change their own password.
--
-- * 'uappHardExpiry' - Prevents IAM users from setting a new password after their password has expired. The IAM user cannot be accessed until an administrator resets the password. If you do not specify a value for this parameter, then the operation uses the default value of @false@ . The result is that IAM users can change their passwords after they expire and continue to sign in as the user.
--
-- * 'uappRequireSymbols' - Specifies whether IAM user passwords must contain at least one of the following non-alphanumeric characters: ! @ # $ % ^ & * ( ) _ + - = [ ] { } | ' If you do not specify a value for this parameter, then the operation uses the default value of @false@ . The result is that passwords do not require at least one symbol character.
--
-- * 'uappRequireNumbers' - Specifies whether IAM user passwords must contain at least one numeric character (0 to 9). If you do not specify a value for this parameter, then the operation uses the default value of @false@ . The result is that passwords do not require at least one numeric character.
updateAccountPasswordPolicy ::
  UpdateAccountPasswordPolicy
updateAccountPasswordPolicy =
  UpdateAccountPasswordPolicy'
    { _uappMaxPasswordAge =
        Nothing,
      _uappRequireLowercaseCharacters = Nothing,
      _uappMinimumPasswordLength = Nothing,
      _uappPasswordReusePrevention = Nothing,
      _uappRequireUppercaseCharacters = Nothing,
      _uappAllowUsersToChangePassword = Nothing,
      _uappHardExpiry = Nothing,
      _uappRequireSymbols = Nothing,
      _uappRequireNumbers = Nothing
    }

-- | The number of days that an IAM user password is valid. If you do not specify a value for this parameter, then the operation uses the default value of @0@ . The result is that IAM user passwords never expire.
uappMaxPasswordAge :: Lens' UpdateAccountPasswordPolicy (Maybe Natural)
uappMaxPasswordAge = lens _uappMaxPasswordAge (\s a -> s {_uappMaxPasswordAge = a}) . mapping _Nat

-- | Specifies whether IAM user passwords must contain at least one lowercase character from the ISO basic Latin alphabet (a to z). If you do not specify a value for this parameter, then the operation uses the default value of @false@ . The result is that passwords do not require at least one lowercase character.
uappRequireLowercaseCharacters :: Lens' UpdateAccountPasswordPolicy (Maybe Bool)
uappRequireLowercaseCharacters = lens _uappRequireLowercaseCharacters (\s a -> s {_uappRequireLowercaseCharacters = a})

-- | The minimum number of characters allowed in an IAM user password. If you do not specify a value for this parameter, then the operation uses the default value of @6@ .
uappMinimumPasswordLength :: Lens' UpdateAccountPasswordPolicy (Maybe Natural)
uappMinimumPasswordLength = lens _uappMinimumPasswordLength (\s a -> s {_uappMinimumPasswordLength = a}) . mapping _Nat

-- | Specifies the number of previous passwords that IAM users are prevented from reusing. If you do not specify a value for this parameter, then the operation uses the default value of @0@ . The result is that IAM users are not prevented from reusing previous passwords.
uappPasswordReusePrevention :: Lens' UpdateAccountPasswordPolicy (Maybe Natural)
uappPasswordReusePrevention = lens _uappPasswordReusePrevention (\s a -> s {_uappPasswordReusePrevention = a}) . mapping _Nat

-- | Specifies whether IAM user passwords must contain at least one uppercase character from the ISO basic Latin alphabet (A to Z). If you do not specify a value for this parameter, then the operation uses the default value of @false@ . The result is that passwords do not require at least one uppercase character.
uappRequireUppercaseCharacters :: Lens' UpdateAccountPasswordPolicy (Maybe Bool)
uappRequireUppercaseCharacters = lens _uappRequireUppercaseCharacters (\s a -> s {_uappRequireUppercaseCharacters = a})

-- | Allows all IAM users in your account to use the AWS Management Console to change their own passwords. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/HowToPwdIAMUser.html Letting IAM users change their own passwords> in the /IAM User Guide/ . If you do not specify a value for this parameter, then the operation uses the default value of @false@ . The result is that IAM users in the account do not automatically have permissions to change their own password.
uappAllowUsersToChangePassword :: Lens' UpdateAccountPasswordPolicy (Maybe Bool)
uappAllowUsersToChangePassword = lens _uappAllowUsersToChangePassword (\s a -> s {_uappAllowUsersToChangePassword = a})

-- | Prevents IAM users from setting a new password after their password has expired. The IAM user cannot be accessed until an administrator resets the password. If you do not specify a value for this parameter, then the operation uses the default value of @false@ . The result is that IAM users can change their passwords after they expire and continue to sign in as the user.
uappHardExpiry :: Lens' UpdateAccountPasswordPolicy (Maybe Bool)
uappHardExpiry = lens _uappHardExpiry (\s a -> s {_uappHardExpiry = a})

-- | Specifies whether IAM user passwords must contain at least one of the following non-alphanumeric characters: ! @ # $ % ^ & * ( ) _ + - = [ ] { } | ' If you do not specify a value for this parameter, then the operation uses the default value of @false@ . The result is that passwords do not require at least one symbol character.
uappRequireSymbols :: Lens' UpdateAccountPasswordPolicy (Maybe Bool)
uappRequireSymbols = lens _uappRequireSymbols (\s a -> s {_uappRequireSymbols = a})

-- | Specifies whether IAM user passwords must contain at least one numeric character (0 to 9). If you do not specify a value for this parameter, then the operation uses the default value of @false@ . The result is that passwords do not require at least one numeric character.
uappRequireNumbers :: Lens' UpdateAccountPasswordPolicy (Maybe Bool)
uappRequireNumbers = lens _uappRequireNumbers (\s a -> s {_uappRequireNumbers = a})

instance AWSRequest UpdateAccountPasswordPolicy where
  type
    Rs UpdateAccountPasswordPolicy =
      UpdateAccountPasswordPolicyResponse
  request = postQuery iam
  response =
    receiveNull UpdateAccountPasswordPolicyResponse'

instance Hashable UpdateAccountPasswordPolicy

instance NFData UpdateAccountPasswordPolicy

instance ToHeaders UpdateAccountPasswordPolicy where
  toHeaders = const mempty

instance ToPath UpdateAccountPasswordPolicy where
  toPath = const "/"

instance ToQuery UpdateAccountPasswordPolicy where
  toQuery UpdateAccountPasswordPolicy' {..} =
    mconcat
      [ "Action"
          =: ("UpdateAccountPasswordPolicy" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxPasswordAge" =: _uappMaxPasswordAge,
        "RequireLowercaseCharacters"
          =: _uappRequireLowercaseCharacters,
        "MinimumPasswordLength"
          =: _uappMinimumPasswordLength,
        "PasswordReusePrevention"
          =: _uappPasswordReusePrevention,
        "RequireUppercaseCharacters"
          =: _uappRequireUppercaseCharacters,
        "AllowUsersToChangePassword"
          =: _uappAllowUsersToChangePassword,
        "HardExpiry" =: _uappHardExpiry,
        "RequireSymbols" =: _uappRequireSymbols,
        "RequireNumbers" =: _uappRequireNumbers
      ]

-- | /See:/ 'updateAccountPasswordPolicyResponse' smart constructor.
data UpdateAccountPasswordPolicyResponse = UpdateAccountPasswordPolicyResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateAccountPasswordPolicyResponse' with the minimum fields required to make a request.
updateAccountPasswordPolicyResponse ::
  UpdateAccountPasswordPolicyResponse
updateAccountPasswordPolicyResponse =
  UpdateAccountPasswordPolicyResponse'

instance NFData UpdateAccountPasswordPolicyResponse
