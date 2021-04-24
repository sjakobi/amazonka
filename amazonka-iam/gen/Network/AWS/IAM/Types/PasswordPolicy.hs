{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.PasswordPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.PasswordPolicy where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the account password policy.
--
--
-- This data type is used as a response element in the 'GetAccountPasswordPolicy' operation.
--
--
-- /See:/ 'passwordPolicy' smart constructor.
data PasswordPolicy = PasswordPolicy'
  { _ppMaxPasswordAge ::
      !(Maybe Nat),
    _ppRequireLowercaseCharacters ::
      !(Maybe Bool),
    _ppMinimumPasswordLength :: !(Maybe Nat),
    _ppPasswordReusePrevention ::
      !(Maybe Nat),
    _ppExpirePasswords :: !(Maybe Bool),
    _ppRequireUppercaseCharacters ::
      !(Maybe Bool),
    _ppAllowUsersToChangePassword ::
      !(Maybe Bool),
    _ppHardExpiry :: !(Maybe Bool),
    _ppRequireSymbols :: !(Maybe Bool),
    _ppRequireNumbers :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PasswordPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppMaxPasswordAge' - The number of days that an IAM user password is valid.
--
-- * 'ppRequireLowercaseCharacters' - Specifies whether IAM user passwords must contain at least one lowercase character (a to z).
--
-- * 'ppMinimumPasswordLength' - Minimum length to require for IAM user passwords.
--
-- * 'ppPasswordReusePrevention' - Specifies the number of previous passwords that IAM users are prevented from reusing.
--
-- * 'ppExpirePasswords' - Indicates whether passwords in the account expire. Returns true if @MaxPasswordAge@ contains a value greater than 0. Returns false if MaxPasswordAge is 0 or not present.
--
-- * 'ppRequireUppercaseCharacters' - Specifies whether IAM user passwords must contain at least one uppercase character (A to Z).
--
-- * 'ppAllowUsersToChangePassword' - Specifies whether IAM users are allowed to change their own password.
--
-- * 'ppHardExpiry' - Specifies whether IAM users are prevented from setting a new password after their password has expired.
--
-- * 'ppRequireSymbols' - Specifies whether IAM user passwords must contain at least one of the following symbols: ! @ # $ % ^ & * ( ) _ + - = [ ] { } | '
--
-- * 'ppRequireNumbers' - Specifies whether IAM user passwords must contain at least one numeric character (0 to 9).
passwordPolicy ::
  PasswordPolicy
passwordPolicy =
  PasswordPolicy'
    { _ppMaxPasswordAge = Nothing,
      _ppRequireLowercaseCharacters = Nothing,
      _ppMinimumPasswordLength = Nothing,
      _ppPasswordReusePrevention = Nothing,
      _ppExpirePasswords = Nothing,
      _ppRequireUppercaseCharacters = Nothing,
      _ppAllowUsersToChangePassword = Nothing,
      _ppHardExpiry = Nothing,
      _ppRequireSymbols = Nothing,
      _ppRequireNumbers = Nothing
    }

-- | The number of days that an IAM user password is valid.
ppMaxPasswordAge :: Lens' PasswordPolicy (Maybe Natural)
ppMaxPasswordAge = lens _ppMaxPasswordAge (\s a -> s {_ppMaxPasswordAge = a}) . mapping _Nat

-- | Specifies whether IAM user passwords must contain at least one lowercase character (a to z).
ppRequireLowercaseCharacters :: Lens' PasswordPolicy (Maybe Bool)
ppRequireLowercaseCharacters = lens _ppRequireLowercaseCharacters (\s a -> s {_ppRequireLowercaseCharacters = a})

-- | Minimum length to require for IAM user passwords.
ppMinimumPasswordLength :: Lens' PasswordPolicy (Maybe Natural)
ppMinimumPasswordLength = lens _ppMinimumPasswordLength (\s a -> s {_ppMinimumPasswordLength = a}) . mapping _Nat

-- | Specifies the number of previous passwords that IAM users are prevented from reusing.
ppPasswordReusePrevention :: Lens' PasswordPolicy (Maybe Natural)
ppPasswordReusePrevention = lens _ppPasswordReusePrevention (\s a -> s {_ppPasswordReusePrevention = a}) . mapping _Nat

-- | Indicates whether passwords in the account expire. Returns true if @MaxPasswordAge@ contains a value greater than 0. Returns false if MaxPasswordAge is 0 or not present.
ppExpirePasswords :: Lens' PasswordPolicy (Maybe Bool)
ppExpirePasswords = lens _ppExpirePasswords (\s a -> s {_ppExpirePasswords = a})

-- | Specifies whether IAM user passwords must contain at least one uppercase character (A to Z).
ppRequireUppercaseCharacters :: Lens' PasswordPolicy (Maybe Bool)
ppRequireUppercaseCharacters = lens _ppRequireUppercaseCharacters (\s a -> s {_ppRequireUppercaseCharacters = a})

-- | Specifies whether IAM users are allowed to change their own password.
ppAllowUsersToChangePassword :: Lens' PasswordPolicy (Maybe Bool)
ppAllowUsersToChangePassword = lens _ppAllowUsersToChangePassword (\s a -> s {_ppAllowUsersToChangePassword = a})

-- | Specifies whether IAM users are prevented from setting a new password after their password has expired.
ppHardExpiry :: Lens' PasswordPolicy (Maybe Bool)
ppHardExpiry = lens _ppHardExpiry (\s a -> s {_ppHardExpiry = a})

-- | Specifies whether IAM user passwords must contain at least one of the following symbols: ! @ # $ % ^ & * ( ) _ + - = [ ] { } | '
ppRequireSymbols :: Lens' PasswordPolicy (Maybe Bool)
ppRequireSymbols = lens _ppRequireSymbols (\s a -> s {_ppRequireSymbols = a})

-- | Specifies whether IAM user passwords must contain at least one numeric character (0 to 9).
ppRequireNumbers :: Lens' PasswordPolicy (Maybe Bool)
ppRequireNumbers = lens _ppRequireNumbers (\s a -> s {_ppRequireNumbers = a})

instance FromXML PasswordPolicy where
  parseXML x =
    PasswordPolicy'
      <$> (x .@? "MaxPasswordAge")
      <*> (x .@? "RequireLowercaseCharacters")
      <*> (x .@? "MinimumPasswordLength")
      <*> (x .@? "PasswordReusePrevention")
      <*> (x .@? "ExpirePasswords")
      <*> (x .@? "RequireUppercaseCharacters")
      <*> (x .@? "AllowUsersToChangePassword")
      <*> (x .@? "HardExpiry")
      <*> (x .@? "RequireSymbols")
      <*> (x .@? "RequireNumbers")

instance Hashable PasswordPolicy

instance NFData PasswordPolicy
