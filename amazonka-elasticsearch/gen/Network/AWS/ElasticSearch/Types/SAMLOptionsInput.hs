{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.SAMLOptionsInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.SAMLOptionsInput where

import Network.AWS.ElasticSearch.Types.SAMLIdp
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the SAML application configuration for the domain.
--
--
--
-- /See:/ 'sAMLOptionsInput' smart constructor.
data SAMLOptionsInput = SAMLOptionsInput'
  { _samloiMasterBackendRole ::
      !(Maybe Text),
    _samloiRolesKey :: !(Maybe Text),
    _samloiSessionTimeoutMinutes ::
      !(Maybe Int),
    _samloiIdp :: !(Maybe SAMLIdp),
    _samloiEnabled :: !(Maybe Bool),
    _samloiMasterUserName ::
      !(Maybe (Sensitive Text)),
    _samloiSubjectKey :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SAMLOptionsInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'samloiMasterBackendRole' - The backend role to which the SAML master user is mapped to.
--
-- * 'samloiRolesKey' - The key to use for matching the SAML Roles attribute.
--
-- * 'samloiSessionTimeoutMinutes' - The duration, in minutes, after which a user session becomes inactive. Acceptable values are between 1 and 1440, and the default value is 60.
--
-- * 'samloiIdp' - Specifies the SAML Identity Provider's information.
--
-- * 'samloiEnabled' - True if SAML is enabled.
--
-- * 'samloiMasterUserName' - The SAML master username, which is stored in the Amazon Elasticsearch Service domain's internal database.
--
-- * 'samloiSubjectKey' - The key to use for matching the SAML Subject attribute.
sAMLOptionsInput ::
  SAMLOptionsInput
sAMLOptionsInput =
  SAMLOptionsInput'
    { _samloiMasterBackendRole =
        Nothing,
      _samloiRolesKey = Nothing,
      _samloiSessionTimeoutMinutes = Nothing,
      _samloiIdp = Nothing,
      _samloiEnabled = Nothing,
      _samloiMasterUserName = Nothing,
      _samloiSubjectKey = Nothing
    }

-- | The backend role to which the SAML master user is mapped to.
samloiMasterBackendRole :: Lens' SAMLOptionsInput (Maybe Text)
samloiMasterBackendRole = lens _samloiMasterBackendRole (\s a -> s {_samloiMasterBackendRole = a})

-- | The key to use for matching the SAML Roles attribute.
samloiRolesKey :: Lens' SAMLOptionsInput (Maybe Text)
samloiRolesKey = lens _samloiRolesKey (\s a -> s {_samloiRolesKey = a})

-- | The duration, in minutes, after which a user session becomes inactive. Acceptable values are between 1 and 1440, and the default value is 60.
samloiSessionTimeoutMinutes :: Lens' SAMLOptionsInput (Maybe Int)
samloiSessionTimeoutMinutes = lens _samloiSessionTimeoutMinutes (\s a -> s {_samloiSessionTimeoutMinutes = a})

-- | Specifies the SAML Identity Provider's information.
samloiIdp :: Lens' SAMLOptionsInput (Maybe SAMLIdp)
samloiIdp = lens _samloiIdp (\s a -> s {_samloiIdp = a})

-- | True if SAML is enabled.
samloiEnabled :: Lens' SAMLOptionsInput (Maybe Bool)
samloiEnabled = lens _samloiEnabled (\s a -> s {_samloiEnabled = a})

-- | The SAML master username, which is stored in the Amazon Elasticsearch Service domain's internal database.
samloiMasterUserName :: Lens' SAMLOptionsInput (Maybe Text)
samloiMasterUserName = lens _samloiMasterUserName (\s a -> s {_samloiMasterUserName = a}) . mapping _Sensitive

-- | The key to use for matching the SAML Subject attribute.
samloiSubjectKey :: Lens' SAMLOptionsInput (Maybe Text)
samloiSubjectKey = lens _samloiSubjectKey (\s a -> s {_samloiSubjectKey = a})

instance Hashable SAMLOptionsInput

instance NFData SAMLOptionsInput

instance ToJSON SAMLOptionsInput where
  toJSON SAMLOptionsInput' {..} =
    object
      ( catMaybes
          [ ("MasterBackendRole" .=)
              <$> _samloiMasterBackendRole,
            ("RolesKey" .=) <$> _samloiRolesKey,
            ("SessionTimeoutMinutes" .=)
              <$> _samloiSessionTimeoutMinutes,
            ("Idp" .=) <$> _samloiIdp,
            ("Enabled" .=) <$> _samloiEnabled,
            ("MasterUserName" .=) <$> _samloiMasterUserName,
            ("SubjectKey" .=) <$> _samloiSubjectKey
          ]
      )
