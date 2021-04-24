{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.SAMLOptionsOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.SAMLOptionsOutput where

import Network.AWS.ElasticSearch.Types.SAMLIdp
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the SAML application configured for the domain.
--
--
--
-- /See:/ 'sAMLOptionsOutput' smart constructor.
data SAMLOptionsOutput = SAMLOptionsOutput'
  { _samlooRolesKey ::
      !(Maybe Text),
    _samlooSessionTimeoutMinutes ::
      !(Maybe Int),
    _samlooIdp :: !(Maybe SAMLIdp),
    _samlooEnabled :: !(Maybe Bool),
    _samlooSubjectKey :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SAMLOptionsOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'samlooRolesKey' - The key used for matching the SAML Roles attribute.
--
-- * 'samlooSessionTimeoutMinutes' - The duration, in minutes, after which a user session becomes inactive.
--
-- * 'samlooIdp' - Describes the SAML Identity Provider's information.
--
-- * 'samlooEnabled' - True if SAML is enabled.
--
-- * 'samlooSubjectKey' - The key used for matching the SAML Subject attribute.
sAMLOptionsOutput ::
  SAMLOptionsOutput
sAMLOptionsOutput =
  SAMLOptionsOutput'
    { _samlooRolesKey = Nothing,
      _samlooSessionTimeoutMinutes = Nothing,
      _samlooIdp = Nothing,
      _samlooEnabled = Nothing,
      _samlooSubjectKey = Nothing
    }

-- | The key used for matching the SAML Roles attribute.
samlooRolesKey :: Lens' SAMLOptionsOutput (Maybe Text)
samlooRolesKey = lens _samlooRolesKey (\s a -> s {_samlooRolesKey = a})

-- | The duration, in minutes, after which a user session becomes inactive.
samlooSessionTimeoutMinutes :: Lens' SAMLOptionsOutput (Maybe Int)
samlooSessionTimeoutMinutes = lens _samlooSessionTimeoutMinutes (\s a -> s {_samlooSessionTimeoutMinutes = a})

-- | Describes the SAML Identity Provider's information.
samlooIdp :: Lens' SAMLOptionsOutput (Maybe SAMLIdp)
samlooIdp = lens _samlooIdp (\s a -> s {_samlooIdp = a})

-- | True if SAML is enabled.
samlooEnabled :: Lens' SAMLOptionsOutput (Maybe Bool)
samlooEnabled = lens _samlooEnabled (\s a -> s {_samlooEnabled = a})

-- | The key used for matching the SAML Subject attribute.
samlooSubjectKey :: Lens' SAMLOptionsOutput (Maybe Text)
samlooSubjectKey = lens _samlooSubjectKey (\s a -> s {_samlooSubjectKey = a})

instance FromJSON SAMLOptionsOutput where
  parseJSON =
    withObject
      "SAMLOptionsOutput"
      ( \x ->
          SAMLOptionsOutput'
            <$> (x .:? "RolesKey")
            <*> (x .:? "SessionTimeoutMinutes")
            <*> (x .:? "Idp")
            <*> (x .:? "Enabled")
            <*> (x .:? "SubjectKey")
      )

instance Hashable SAMLOptionsOutput

instance NFData SAMLOptionsOutput
