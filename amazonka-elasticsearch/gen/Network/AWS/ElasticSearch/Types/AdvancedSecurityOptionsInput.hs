{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.AdvancedSecurityOptionsInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AdvancedSecurityOptionsInput where

import Network.AWS.ElasticSearch.Types.MasterUserOptions
import Network.AWS.ElasticSearch.Types.SAMLOptionsInput
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the advanced security configuration: whether advanced security is enabled, whether the internal database option is enabled, master username and password (if internal database is enabled), and master user ARN (if IAM is enabled).
--
--
--
-- /See:/ 'advancedSecurityOptionsInput' smart constructor.
data AdvancedSecurityOptionsInput = AdvancedSecurityOptionsInput'
  { _asoiInternalUserDatabaseEnabled ::
      !(Maybe Bool),
    _asoiSAMLOptions ::
      !( Maybe
           SAMLOptionsInput
       ),
    _asoiEnabled ::
      !(Maybe Bool),
    _asoiMasterUserOptions ::
      !( Maybe
           MasterUserOptions
       )
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AdvancedSecurityOptionsInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asoiInternalUserDatabaseEnabled' - True if the internal user database is enabled.
--
-- * 'asoiSAMLOptions' - Specifies the SAML application configuration for the domain.
--
-- * 'asoiEnabled' - True if advanced security is enabled.
--
-- * 'asoiMasterUserOptions' - Credentials for the master user: username and password, ARN, or both.
advancedSecurityOptionsInput ::
  AdvancedSecurityOptionsInput
advancedSecurityOptionsInput =
  AdvancedSecurityOptionsInput'
    { _asoiInternalUserDatabaseEnabled =
        Nothing,
      _asoiSAMLOptions = Nothing,
      _asoiEnabled = Nothing,
      _asoiMasterUserOptions = Nothing
    }

-- | True if the internal user database is enabled.
asoiInternalUserDatabaseEnabled :: Lens' AdvancedSecurityOptionsInput (Maybe Bool)
asoiInternalUserDatabaseEnabled = lens _asoiInternalUserDatabaseEnabled (\s a -> s {_asoiInternalUserDatabaseEnabled = a})

-- | Specifies the SAML application configuration for the domain.
asoiSAMLOptions :: Lens' AdvancedSecurityOptionsInput (Maybe SAMLOptionsInput)
asoiSAMLOptions = lens _asoiSAMLOptions (\s a -> s {_asoiSAMLOptions = a})

-- | True if advanced security is enabled.
asoiEnabled :: Lens' AdvancedSecurityOptionsInput (Maybe Bool)
asoiEnabled = lens _asoiEnabled (\s a -> s {_asoiEnabled = a})

-- | Credentials for the master user: username and password, ARN, or both.
asoiMasterUserOptions :: Lens' AdvancedSecurityOptionsInput (Maybe MasterUserOptions)
asoiMasterUserOptions = lens _asoiMasterUserOptions (\s a -> s {_asoiMasterUserOptions = a})

instance Hashable AdvancedSecurityOptionsInput

instance NFData AdvancedSecurityOptionsInput

instance ToJSON AdvancedSecurityOptionsInput where
  toJSON AdvancedSecurityOptionsInput' {..} =
    object
      ( catMaybes
          [ ("InternalUserDatabaseEnabled" .=)
              <$> _asoiInternalUserDatabaseEnabled,
            ("SAMLOptions" .=) <$> _asoiSAMLOptions,
            ("Enabled" .=) <$> _asoiEnabled,
            ("MasterUserOptions" .=) <$> _asoiMasterUserOptions
          ]
      )
