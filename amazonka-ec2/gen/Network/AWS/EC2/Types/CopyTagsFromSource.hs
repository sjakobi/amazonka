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
-- Module      : Network.AWS.EC2.Types.CopyTagsFromSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CopyTagsFromSource
  ( CopyTagsFromSource
      ( ..,
        CopyTagsFromSourceVolume
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype CopyTagsFromSource = CopyTagsFromSource'
  { fromCopyTagsFromSource ::
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

pattern CopyTagsFromSourceVolume :: CopyTagsFromSource
pattern CopyTagsFromSourceVolume = CopyTagsFromSource' "volume"

{-# COMPLETE
  CopyTagsFromSourceVolume,
  CopyTagsFromSource'
  #-}

instance Prelude.FromText CopyTagsFromSource where
  parser = CopyTagsFromSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText CopyTagsFromSource where
  toText (CopyTagsFromSource' x) = x

instance Prelude.Hashable CopyTagsFromSource

instance Prelude.NFData CopyTagsFromSource

instance Prelude.ToByteString CopyTagsFromSource

instance Prelude.ToQuery CopyTagsFromSource

instance Prelude.ToHeader CopyTagsFromSource
