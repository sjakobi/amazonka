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
-- Module      : Network.AWS.ElastiCache.Types.AutomaticFailoverStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.AutomaticFailoverStatus
  ( AutomaticFailoverStatus
      ( ..,
        AutomaticFailoverStatusDisabled,
        AutomaticFailoverStatusDisabling,
        AutomaticFailoverStatusEnabled,
        AutomaticFailoverStatusEnabling
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutomaticFailoverStatus = AutomaticFailoverStatus'
  { fromAutomaticFailoverStatus ::
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

pattern AutomaticFailoverStatusDisabled :: AutomaticFailoverStatus
pattern AutomaticFailoverStatusDisabled = AutomaticFailoverStatus' "disabled"

pattern AutomaticFailoverStatusDisabling :: AutomaticFailoverStatus
pattern AutomaticFailoverStatusDisabling = AutomaticFailoverStatus' "disabling"

pattern AutomaticFailoverStatusEnabled :: AutomaticFailoverStatus
pattern AutomaticFailoverStatusEnabled = AutomaticFailoverStatus' "enabled"

pattern AutomaticFailoverStatusEnabling :: AutomaticFailoverStatus
pattern AutomaticFailoverStatusEnabling = AutomaticFailoverStatus' "enabling"

{-# COMPLETE
  AutomaticFailoverStatusDisabled,
  AutomaticFailoverStatusDisabling,
  AutomaticFailoverStatusEnabled,
  AutomaticFailoverStatusEnabling,
  AutomaticFailoverStatus'
  #-}

instance Prelude.FromText AutomaticFailoverStatus where
  parser = AutomaticFailoverStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutomaticFailoverStatus where
  toText (AutomaticFailoverStatus' x) = x

instance Prelude.Hashable AutomaticFailoverStatus

instance Prelude.NFData AutomaticFailoverStatus

instance Prelude.ToByteString AutomaticFailoverStatus

instance Prelude.ToQuery AutomaticFailoverStatus

instance Prelude.ToHeader AutomaticFailoverStatus

instance Prelude.FromXML AutomaticFailoverStatus where
  parseXML = Prelude.parseXMLText "AutomaticFailoverStatus"
