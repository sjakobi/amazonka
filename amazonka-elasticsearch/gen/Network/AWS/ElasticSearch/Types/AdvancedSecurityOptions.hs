{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.AdvancedSecurityOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AdvancedSecurityOptions where

import Network.AWS.ElasticSearch.Types.SAMLOptionsOutput
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the advanced security configuration: whether advanced security is enabled, whether the internal database option is enabled.
--
--
--
-- /See:/ 'advancedSecurityOptions' smart constructor.
data AdvancedSecurityOptions = AdvancedSecurityOptions'
  { _asoInternalUserDatabaseEnabled ::
      !(Maybe Bool),
    _asoSAMLOptions ::
      !( Maybe
           SAMLOptionsOutput
       ),
    _asoEnabled ::
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

-- | Creates a value of 'AdvancedSecurityOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asoInternalUserDatabaseEnabled' - True if the internal user database is enabled.
--
-- * 'asoSAMLOptions' - Describes the SAML application configured for a domain.
--
-- * 'asoEnabled' - True if advanced security is enabled.
advancedSecurityOptions ::
  AdvancedSecurityOptions
advancedSecurityOptions =
  AdvancedSecurityOptions'
    { _asoInternalUserDatabaseEnabled =
        Nothing,
      _asoSAMLOptions = Nothing,
      _asoEnabled = Nothing
    }

-- | True if the internal user database is enabled.
asoInternalUserDatabaseEnabled :: Lens' AdvancedSecurityOptions (Maybe Bool)
asoInternalUserDatabaseEnabled = lens _asoInternalUserDatabaseEnabled (\s a -> s {_asoInternalUserDatabaseEnabled = a})

-- | Describes the SAML application configured for a domain.
asoSAMLOptions :: Lens' AdvancedSecurityOptions (Maybe SAMLOptionsOutput)
asoSAMLOptions = lens _asoSAMLOptions (\s a -> s {_asoSAMLOptions = a})

-- | True if advanced security is enabled.
asoEnabled :: Lens' AdvancedSecurityOptions (Maybe Bool)
asoEnabled = lens _asoEnabled (\s a -> s {_asoEnabled = a})

instance FromJSON AdvancedSecurityOptions where
  parseJSON =
    withObject
      "AdvancedSecurityOptions"
      ( \x ->
          AdvancedSecurityOptions'
            <$> (x .:? "InternalUserDatabaseEnabled")
            <*> (x .:? "SAMLOptions")
            <*> (x .:? "Enabled")
      )

instance Hashable AdvancedSecurityOptions

instance NFData AdvancedSecurityOptions
