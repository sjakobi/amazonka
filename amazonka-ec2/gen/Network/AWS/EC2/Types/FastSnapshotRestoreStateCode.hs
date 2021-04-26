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
-- Module      : Network.AWS.EC2.Types.FastSnapshotRestoreStateCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FastSnapshotRestoreStateCode
  ( FastSnapshotRestoreStateCode
      ( ..,
        FastSnapshotRestoreStateCodeDisabled,
        FastSnapshotRestoreStateCodeDisabling,
        FastSnapshotRestoreStateCodeEnabled,
        FastSnapshotRestoreStateCodeEnabling,
        FastSnapshotRestoreStateCodeOptimizing
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype FastSnapshotRestoreStateCode = FastSnapshotRestoreStateCode'
  { fromFastSnapshotRestoreStateCode ::
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

pattern FastSnapshotRestoreStateCodeDisabled :: FastSnapshotRestoreStateCode
pattern FastSnapshotRestoreStateCodeDisabled = FastSnapshotRestoreStateCode' "disabled"

pattern FastSnapshotRestoreStateCodeDisabling :: FastSnapshotRestoreStateCode
pattern FastSnapshotRestoreStateCodeDisabling = FastSnapshotRestoreStateCode' "disabling"

pattern FastSnapshotRestoreStateCodeEnabled :: FastSnapshotRestoreStateCode
pattern FastSnapshotRestoreStateCodeEnabled = FastSnapshotRestoreStateCode' "enabled"

pattern FastSnapshotRestoreStateCodeEnabling :: FastSnapshotRestoreStateCode
pattern FastSnapshotRestoreStateCodeEnabling = FastSnapshotRestoreStateCode' "enabling"

pattern FastSnapshotRestoreStateCodeOptimizing :: FastSnapshotRestoreStateCode
pattern FastSnapshotRestoreStateCodeOptimizing = FastSnapshotRestoreStateCode' "optimizing"

{-# COMPLETE
  FastSnapshotRestoreStateCodeDisabled,
  FastSnapshotRestoreStateCodeDisabling,
  FastSnapshotRestoreStateCodeEnabled,
  FastSnapshotRestoreStateCodeEnabling,
  FastSnapshotRestoreStateCodeOptimizing,
  FastSnapshotRestoreStateCode'
  #-}

instance Prelude.FromText FastSnapshotRestoreStateCode where
  parser = FastSnapshotRestoreStateCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText FastSnapshotRestoreStateCode where
  toText (FastSnapshotRestoreStateCode' x) = x

instance Prelude.Hashable FastSnapshotRestoreStateCode

instance Prelude.NFData FastSnapshotRestoreStateCode

instance Prelude.ToByteString FastSnapshotRestoreStateCode

instance Prelude.ToQuery FastSnapshotRestoreStateCode

instance Prelude.ToHeader FastSnapshotRestoreStateCode

instance Prelude.FromXML FastSnapshotRestoreStateCode where
  parseXML = Prelude.parseXMLText "FastSnapshotRestoreStateCode"
