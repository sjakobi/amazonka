{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types.ResourceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.ResourceStatus where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ResourceGroups.Types.ResourceStatusValue

-- | A structure that identifies the current group membership status for a resource. Adding a resource to a resource group is performed asynchronously as a background task. A @PENDING@ status indicates, for this resource, that the process isn't completed yet.
--
--
--
-- /See:/ 'resourceStatus' smart constructor.
newtype ResourceStatus = ResourceStatus'
  { _rsName ::
      Maybe ResourceStatusValue
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourceStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsName' - The current status.
resourceStatus ::
  ResourceStatus
resourceStatus = ResourceStatus' {_rsName = Nothing}

-- | The current status.
rsName :: Lens' ResourceStatus (Maybe ResourceStatusValue)
rsName = lens _rsName (\s a -> s {_rsName = a})

instance FromJSON ResourceStatus where
  parseJSON =
    withObject
      "ResourceStatus"
      (\x -> ResourceStatus' <$> (x .:? "Name"))

instance Hashable ResourceStatus

instance NFData ResourceStatus
