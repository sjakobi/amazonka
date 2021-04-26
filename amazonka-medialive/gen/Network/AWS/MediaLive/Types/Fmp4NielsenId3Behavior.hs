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
-- Module      : Network.AWS.MediaLive.Types.Fmp4NielsenId3Behavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Fmp4NielsenId3Behavior
  ( Fmp4NielsenId3Behavior
      ( ..,
        Fmp4NielsenId3BehaviorNOPASSTHROUGH,
        Fmp4NielsenId3BehaviorPASSTHROUGH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Fmp4 Nielsen Id3 Behavior
newtype Fmp4NielsenId3Behavior = Fmp4NielsenId3Behavior'
  { fromFmp4NielsenId3Behavior ::
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

pattern Fmp4NielsenId3BehaviorNOPASSTHROUGH :: Fmp4NielsenId3Behavior
pattern Fmp4NielsenId3BehaviorNOPASSTHROUGH = Fmp4NielsenId3Behavior' "NO_PASSTHROUGH"

pattern Fmp4NielsenId3BehaviorPASSTHROUGH :: Fmp4NielsenId3Behavior
pattern Fmp4NielsenId3BehaviorPASSTHROUGH = Fmp4NielsenId3Behavior' "PASSTHROUGH"

{-# COMPLETE
  Fmp4NielsenId3BehaviorNOPASSTHROUGH,
  Fmp4NielsenId3BehaviorPASSTHROUGH,
  Fmp4NielsenId3Behavior'
  #-}

instance Prelude.FromText Fmp4NielsenId3Behavior where
  parser = Fmp4NielsenId3Behavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText Fmp4NielsenId3Behavior where
  toText (Fmp4NielsenId3Behavior' x) = x

instance Prelude.Hashable Fmp4NielsenId3Behavior

instance Prelude.NFData Fmp4NielsenId3Behavior

instance Prelude.ToByteString Fmp4NielsenId3Behavior

instance Prelude.ToQuery Fmp4NielsenId3Behavior

instance Prelude.ToHeader Fmp4NielsenId3Behavior

instance Prelude.ToJSON Fmp4NielsenId3Behavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Fmp4NielsenId3Behavior where
  parseJSON = Prelude.parseJSONText "Fmp4NielsenId3Behavior"
