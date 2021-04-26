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
-- Module      : Network.AWS.ElastiCache.Types.PendingAutomaticFailoverStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.PendingAutomaticFailoverStatus
  ( PendingAutomaticFailoverStatus
      ( ..,
        PendingAutomaticFailoverStatusDisabled,
        PendingAutomaticFailoverStatusEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PendingAutomaticFailoverStatus = PendingAutomaticFailoverStatus'
  { fromPendingAutomaticFailoverStatus ::
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

pattern PendingAutomaticFailoverStatusDisabled :: PendingAutomaticFailoverStatus
pattern PendingAutomaticFailoverStatusDisabled = PendingAutomaticFailoverStatus' "disabled"

pattern PendingAutomaticFailoverStatusEnabled :: PendingAutomaticFailoverStatus
pattern PendingAutomaticFailoverStatusEnabled = PendingAutomaticFailoverStatus' "enabled"

{-# COMPLETE
  PendingAutomaticFailoverStatusDisabled,
  PendingAutomaticFailoverStatusEnabled,
  PendingAutomaticFailoverStatus'
  #-}

instance Prelude.FromText PendingAutomaticFailoverStatus where
  parser = PendingAutomaticFailoverStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText PendingAutomaticFailoverStatus where
  toText (PendingAutomaticFailoverStatus' x) = x

instance Prelude.Hashable PendingAutomaticFailoverStatus

instance Prelude.NFData PendingAutomaticFailoverStatus

instance Prelude.ToByteString PendingAutomaticFailoverStatus

instance Prelude.ToQuery PendingAutomaticFailoverStatus

instance Prelude.ToHeader PendingAutomaticFailoverStatus

instance Prelude.FromXML PendingAutomaticFailoverStatus where
  parseXML = Prelude.parseXMLText "PendingAutomaticFailoverStatus"
