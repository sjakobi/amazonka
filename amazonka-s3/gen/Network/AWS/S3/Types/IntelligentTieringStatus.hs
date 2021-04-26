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
-- Module      : Network.AWS.S3.Types.IntelligentTieringStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.IntelligentTieringStatus
  ( IntelligentTieringStatus
      ( ..,
        IntelligentTieringStatusDisabled,
        IntelligentTieringStatusEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype IntelligentTieringStatus = IntelligentTieringStatus'
  { fromIntelligentTieringStatus ::
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

pattern IntelligentTieringStatusDisabled :: IntelligentTieringStatus
pattern IntelligentTieringStatusDisabled = IntelligentTieringStatus' "Disabled"

pattern IntelligentTieringStatusEnabled :: IntelligentTieringStatus
pattern IntelligentTieringStatusEnabled = IntelligentTieringStatus' "Enabled"

{-# COMPLETE
  IntelligentTieringStatusDisabled,
  IntelligentTieringStatusEnabled,
  IntelligentTieringStatus'
  #-}

instance Prelude.FromText IntelligentTieringStatus where
  parser = IntelligentTieringStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText IntelligentTieringStatus where
  toText (IntelligentTieringStatus' x) = x

instance Prelude.Hashable IntelligentTieringStatus

instance Prelude.NFData IntelligentTieringStatus

instance Prelude.ToByteString IntelligentTieringStatus

instance Prelude.ToQuery IntelligentTieringStatus

instance Prelude.ToHeader IntelligentTieringStatus

instance Prelude.FromXML IntelligentTieringStatus where
  parseXML = Prelude.parseXMLText "IntelligentTieringStatus"

instance Prelude.ToXML IntelligentTieringStatus where
  toXML = Prelude.toXMLText
