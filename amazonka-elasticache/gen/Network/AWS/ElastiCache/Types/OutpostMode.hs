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
-- Module      : Network.AWS.ElastiCache.Types.OutpostMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.OutpostMode
  ( OutpostMode
      ( ..,
        OutpostModeCrossOutpost,
        OutpostModeSingleOutpost
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OutpostMode = OutpostMode'
  { fromOutpostMode ::
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

pattern OutpostModeCrossOutpost :: OutpostMode
pattern OutpostModeCrossOutpost = OutpostMode' "cross-outpost"

pattern OutpostModeSingleOutpost :: OutpostMode
pattern OutpostModeSingleOutpost = OutpostMode' "single-outpost"

{-# COMPLETE
  OutpostModeCrossOutpost,
  OutpostModeSingleOutpost,
  OutpostMode'
  #-}

instance Prelude.FromText OutpostMode where
  parser = OutpostMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText OutpostMode where
  toText (OutpostMode' x) = x

instance Prelude.Hashable OutpostMode

instance Prelude.NFData OutpostMode

instance Prelude.ToByteString OutpostMode

instance Prelude.ToQuery OutpostMode

instance Prelude.ToHeader OutpostMode
