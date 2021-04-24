{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.Permission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.Permission where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes stack or user permissions.
--
--
--
-- /See:/ 'permission' smart constructor.
data Permission = Permission'
  { _pAllowSudo ::
      !(Maybe Bool),
    _pIAMUserARN :: !(Maybe Text),
    _pStackId :: !(Maybe Text),
    _pAllowSSH :: !(Maybe Bool),
    _pLevel :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAllowSudo' - Whether the user can use __sudo__ .
--
-- * 'pIAMUserARN' - The Amazon Resource Name (ARN) for an AWS Identity and Access Management (IAM) role. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
--
-- * 'pStackId' - A stack ID.
--
-- * 'pAllowSSH' - Whether the user can use SSH.
--
-- * 'pLevel' - The user's permission level, which must be the following:     * @deny@      * @show@      * @deploy@      * @manage@      * @iam_only@  For more information on the permissions associated with these levels, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions>
permission ::
  Permission
permission =
  Permission'
    { _pAllowSudo = Nothing,
      _pIAMUserARN = Nothing,
      _pStackId = Nothing,
      _pAllowSSH = Nothing,
      _pLevel = Nothing
    }

-- | Whether the user can use __sudo__ .
pAllowSudo :: Lens' Permission (Maybe Bool)
pAllowSudo = lens _pAllowSudo (\s a -> s {_pAllowSudo = a})

-- | The Amazon Resource Name (ARN) for an AWS Identity and Access Management (IAM) role. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
pIAMUserARN :: Lens' Permission (Maybe Text)
pIAMUserARN = lens _pIAMUserARN (\s a -> s {_pIAMUserARN = a})

-- | A stack ID.
pStackId :: Lens' Permission (Maybe Text)
pStackId = lens _pStackId (\s a -> s {_pStackId = a})

-- | Whether the user can use SSH.
pAllowSSH :: Lens' Permission (Maybe Bool)
pAllowSSH = lens _pAllowSSH (\s a -> s {_pAllowSSH = a})

-- | The user's permission level, which must be the following:     * @deny@      * @show@      * @deploy@      * @manage@      * @iam_only@  For more information on the permissions associated with these levels, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions>
pLevel :: Lens' Permission (Maybe Text)
pLevel = lens _pLevel (\s a -> s {_pLevel = a})

instance FromJSON Permission where
  parseJSON =
    withObject
      "Permission"
      ( \x ->
          Permission'
            <$> (x .:? "AllowSudo")
            <*> (x .:? "IamUserArn")
            <*> (x .:? "StackId")
            <*> (x .:? "AllowSsh")
            <*> (x .:? "Level")
      )

instance Hashable Permission

instance NFData Permission
