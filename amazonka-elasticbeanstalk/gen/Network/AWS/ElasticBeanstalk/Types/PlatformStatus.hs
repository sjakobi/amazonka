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
-- Module      : Network.AWS.ElasticBeanstalk.Types.PlatformStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.PlatformStatus
  ( PlatformStatus
      ( ..,
        PlatformStatusCreating,
        PlatformStatusDeleted,
        PlatformStatusDeleting,
        PlatformStatusFailed,
        PlatformStatusReady
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PlatformStatus = PlatformStatus'
  { fromPlatformStatus ::
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

pattern PlatformStatusCreating :: PlatformStatus
pattern PlatformStatusCreating = PlatformStatus' "Creating"

pattern PlatformStatusDeleted :: PlatformStatus
pattern PlatformStatusDeleted = PlatformStatus' "Deleted"

pattern PlatformStatusDeleting :: PlatformStatus
pattern PlatformStatusDeleting = PlatformStatus' "Deleting"

pattern PlatformStatusFailed :: PlatformStatus
pattern PlatformStatusFailed = PlatformStatus' "Failed"

pattern PlatformStatusReady :: PlatformStatus
pattern PlatformStatusReady = PlatformStatus' "Ready"

{-# COMPLETE
  PlatformStatusCreating,
  PlatformStatusDeleted,
  PlatformStatusDeleting,
  PlatformStatusFailed,
  PlatformStatusReady,
  PlatformStatus'
  #-}

instance Prelude.FromText PlatformStatus where
  parser = PlatformStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText PlatformStatus where
  toText (PlatformStatus' x) = x

instance Prelude.Hashable PlatformStatus

instance Prelude.NFData PlatformStatus

instance Prelude.ToByteString PlatformStatus

instance Prelude.ToQuery PlatformStatus

instance Prelude.ToHeader PlatformStatus

instance Prelude.FromXML PlatformStatus where
  parseXML = Prelude.parseXMLText "PlatformStatus"
