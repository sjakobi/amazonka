{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.SecurityProfileTargetMapping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.SecurityProfileTargetMapping where

import Network.AWS.IoT.Types.SecurityProfileIdentifier
import Network.AWS.IoT.Types.SecurityProfileTarget
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a security profile and the target associated with it.
--
--
--
-- /See:/ 'securityProfileTargetMapping' smart constructor.
data SecurityProfileTargetMapping = SecurityProfileTargetMapping'
  { _sptmTarget ::
      !( Maybe
           SecurityProfileTarget
       ),
    _sptmSecurityProfileIdentifier ::
      !( Maybe
           SecurityProfileIdentifier
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SecurityProfileTargetMapping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sptmTarget' - Information about the target (thing group) associated with the security profile.
--
-- * 'sptmSecurityProfileIdentifier' - Information that identifies the security profile.
securityProfileTargetMapping ::
  SecurityProfileTargetMapping
securityProfileTargetMapping =
  SecurityProfileTargetMapping'
    { _sptmTarget =
        Nothing,
      _sptmSecurityProfileIdentifier = Nothing
    }

-- | Information about the target (thing group) associated with the security profile.
sptmTarget :: Lens' SecurityProfileTargetMapping (Maybe SecurityProfileTarget)
sptmTarget = lens _sptmTarget (\s a -> s {_sptmTarget = a})

-- | Information that identifies the security profile.
sptmSecurityProfileIdentifier :: Lens' SecurityProfileTargetMapping (Maybe SecurityProfileIdentifier)
sptmSecurityProfileIdentifier = lens _sptmSecurityProfileIdentifier (\s a -> s {_sptmSecurityProfileIdentifier = a})

instance FromJSON SecurityProfileTargetMapping where
  parseJSON =
    withObject
      "SecurityProfileTargetMapping"
      ( \x ->
          SecurityProfileTargetMapping'
            <$> (x .:? "target")
            <*> (x .:? "securityProfileIdentifier")
      )

instance Hashable SecurityProfileTargetMapping

instance NFData SecurityProfileTargetMapping
