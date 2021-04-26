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
-- Module      : Network.AWS.ElastiCache.Types.MultiAZStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.MultiAZStatus
  ( MultiAZStatus
      ( ..,
        MultiAZStatusDisabled,
        MultiAZStatusEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MultiAZStatus = MultiAZStatus'
  { fromMultiAZStatus ::
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

pattern MultiAZStatusDisabled :: MultiAZStatus
pattern MultiAZStatusDisabled = MultiAZStatus' "disabled"

pattern MultiAZStatusEnabled :: MultiAZStatus
pattern MultiAZStatusEnabled = MultiAZStatus' "enabled"

{-# COMPLETE
  MultiAZStatusDisabled,
  MultiAZStatusEnabled,
  MultiAZStatus'
  #-}

instance Prelude.FromText MultiAZStatus where
  parser = MultiAZStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText MultiAZStatus where
  toText (MultiAZStatus' x) = x

instance Prelude.Hashable MultiAZStatus

instance Prelude.NFData MultiAZStatus

instance Prelude.ToByteString MultiAZStatus

instance Prelude.ToQuery MultiAZStatus

instance Prelude.ToHeader MultiAZStatus

instance Prelude.FromXML MultiAZStatus where
  parseXML = Prelude.parseXMLText "MultiAZStatus"
