{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.IpRouteStatusMsg
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.IpRouteStatusMsg
  ( IpRouteStatusMsg
      ( ..,
        IpRouteStatusMsgAddFailed,
        IpRouteStatusMsgAdded,
        IpRouteStatusMsgAdding,
        IpRouteStatusMsgRemoveFailed,
        IpRouteStatusMsgRemoved,
        IpRouteStatusMsgRemoving
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IpRouteStatusMsg = IpRouteStatusMsg'
  { fromIpRouteStatusMsg ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern IpRouteStatusMsgAddFailed :: IpRouteStatusMsg
pattern IpRouteStatusMsgAddFailed = IpRouteStatusMsg' "AddFailed"

pattern IpRouteStatusMsgAdded :: IpRouteStatusMsg
pattern IpRouteStatusMsgAdded = IpRouteStatusMsg' "Added"

pattern IpRouteStatusMsgAdding :: IpRouteStatusMsg
pattern IpRouteStatusMsgAdding = IpRouteStatusMsg' "Adding"

pattern IpRouteStatusMsgRemoveFailed :: IpRouteStatusMsg
pattern IpRouteStatusMsgRemoveFailed = IpRouteStatusMsg' "RemoveFailed"

pattern IpRouteStatusMsgRemoved :: IpRouteStatusMsg
pattern IpRouteStatusMsgRemoved = IpRouteStatusMsg' "Removed"

pattern IpRouteStatusMsgRemoving :: IpRouteStatusMsg
pattern IpRouteStatusMsgRemoving = IpRouteStatusMsg' "Removing"

{-# COMPLETE
  IpRouteStatusMsgAddFailed,
  IpRouteStatusMsgAdded,
  IpRouteStatusMsgAdding,
  IpRouteStatusMsgRemoveFailed,
  IpRouteStatusMsgRemoved,
  IpRouteStatusMsgRemoving,
  IpRouteStatusMsg'
  #-}

instance Prelude.FromText IpRouteStatusMsg where
  parser = IpRouteStatusMsg' Prelude.<$> Prelude.takeText

instance Prelude.ToText IpRouteStatusMsg where
  toText (IpRouteStatusMsg' x) = x

instance Prelude.Hashable IpRouteStatusMsg

instance Prelude.NFData IpRouteStatusMsg

instance Prelude.ToByteString IpRouteStatusMsg

instance Prelude.ToQuery IpRouteStatusMsg

instance Prelude.ToHeader IpRouteStatusMsg

instance Prelude.FromJSON IpRouteStatusMsg where
  parseJSON = Prelude.parseJSONText "IpRouteStatusMsg"
