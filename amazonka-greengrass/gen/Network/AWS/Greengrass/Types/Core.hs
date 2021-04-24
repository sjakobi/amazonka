{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.Core
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.Core where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a core.
--
-- /See:/ 'core' smart constructor.
data Core = Core'
  { _corSyncShadow :: !(Maybe Bool),
    _corThingARN :: !Text,
    _corId :: !Text,
    _corCertificateARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Core' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'corSyncShadow' - If true, the core's local shadow is automatically synced with the cloud.
--
-- * 'corThingARN' - The ARN of the thing which is the core.
--
-- * 'corId' - A descriptive or arbitrary ID for the core. This value must be unique within the core definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.
--
-- * 'corCertificateARN' - The ARN of the certificate associated with the core.
core ::
  -- | 'corThingARN'
  Text ->
  -- | 'corId'
  Text ->
  -- | 'corCertificateARN'
  Text ->
  Core
core pThingARN_ pId_ pCertificateARN_ =
  Core'
    { _corSyncShadow = Nothing,
      _corThingARN = pThingARN_,
      _corId = pId_,
      _corCertificateARN = pCertificateARN_
    }

-- | If true, the core's local shadow is automatically synced with the cloud.
corSyncShadow :: Lens' Core (Maybe Bool)
corSyncShadow = lens _corSyncShadow (\s a -> s {_corSyncShadow = a})

-- | The ARN of the thing which is the core.
corThingARN :: Lens' Core Text
corThingARN = lens _corThingARN (\s a -> s {_corThingARN = a})

-- | A descriptive or arbitrary ID for the core. This value must be unique within the core definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.
corId :: Lens' Core Text
corId = lens _corId (\s a -> s {_corId = a})

-- | The ARN of the certificate associated with the core.
corCertificateARN :: Lens' Core Text
corCertificateARN = lens _corCertificateARN (\s a -> s {_corCertificateARN = a})

instance FromJSON Core where
  parseJSON =
    withObject
      "Core"
      ( \x ->
          Core'
            <$> (x .:? "SyncShadow")
            <*> (x .: "ThingArn")
            <*> (x .: "Id")
            <*> (x .: "CertificateArn")
      )

instance Hashable Core

instance NFData Core

instance ToJSON Core where
  toJSON Core' {..} =
    object
      ( catMaybes
          [ ("SyncShadow" .=) <$> _corSyncShadow,
            Just ("ThingArn" .= _corThingARN),
            Just ("Id" .= _corId),
            Just ("CertificateArn" .= _corCertificateARN)
          ]
      )
