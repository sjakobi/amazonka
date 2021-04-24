{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.ShareResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.ShareResult where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkDocs.Types.RoleType
import Network.AWS.WorkDocs.Types.ShareStatusType

-- | Describes the share results of a resource.
--
--
--
-- /See:/ 'shareResult' smart constructor.
data ShareResult = ShareResult'
  { _srStatusMessage ::
      !(Maybe (Sensitive Text)),
    _srStatus :: !(Maybe ShareStatusType),
    _srInviteePrincipalId :: !(Maybe Text),
    _srShareId :: !(Maybe Text),
    _srPrincipalId :: !(Maybe Text),
    _srRole :: !(Maybe RoleType)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShareResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srStatusMessage' - The status message.
--
-- * 'srStatus' - The status.
--
-- * 'srInviteePrincipalId' - The ID of the invited user.
--
-- * 'srShareId' - The ID of the resource that was shared.
--
-- * 'srPrincipalId' - The ID of the principal.
--
-- * 'srRole' - The role.
shareResult ::
  ShareResult
shareResult =
  ShareResult'
    { _srStatusMessage = Nothing,
      _srStatus = Nothing,
      _srInviteePrincipalId = Nothing,
      _srShareId = Nothing,
      _srPrincipalId = Nothing,
      _srRole = Nothing
    }

-- | The status message.
srStatusMessage :: Lens' ShareResult (Maybe Text)
srStatusMessage = lens _srStatusMessage (\s a -> s {_srStatusMessage = a}) . mapping _Sensitive

-- | The status.
srStatus :: Lens' ShareResult (Maybe ShareStatusType)
srStatus = lens _srStatus (\s a -> s {_srStatus = a})

-- | The ID of the invited user.
srInviteePrincipalId :: Lens' ShareResult (Maybe Text)
srInviteePrincipalId = lens _srInviteePrincipalId (\s a -> s {_srInviteePrincipalId = a})

-- | The ID of the resource that was shared.
srShareId :: Lens' ShareResult (Maybe Text)
srShareId = lens _srShareId (\s a -> s {_srShareId = a})

-- | The ID of the principal.
srPrincipalId :: Lens' ShareResult (Maybe Text)
srPrincipalId = lens _srPrincipalId (\s a -> s {_srPrincipalId = a})

-- | The role.
srRole :: Lens' ShareResult (Maybe RoleType)
srRole = lens _srRole (\s a -> s {_srRole = a})

instance FromJSON ShareResult where
  parseJSON =
    withObject
      "ShareResult"
      ( \x ->
          ShareResult'
            <$> (x .:? "StatusMessage")
            <*> (x .:? "Status")
            <*> (x .:? "InviteePrincipalId")
            <*> (x .:? "ShareId")
            <*> (x .:? "PrincipalId")
            <*> (x .:? "Role")
      )

instance Hashable ShareResult

instance NFData ShareResult
