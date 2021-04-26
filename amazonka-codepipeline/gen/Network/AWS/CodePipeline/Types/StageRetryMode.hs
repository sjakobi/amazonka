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
-- Module      : Network.AWS.CodePipeline.Types.StageRetryMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.StageRetryMode
  ( StageRetryMode
      ( ..,
        StageRetryModeFAILEDACTIONS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StageRetryMode = StageRetryMode'
  { fromStageRetryMode ::
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

pattern StageRetryModeFAILEDACTIONS :: StageRetryMode
pattern StageRetryModeFAILEDACTIONS = StageRetryMode' "FAILED_ACTIONS"

{-# COMPLETE
  StageRetryModeFAILEDACTIONS,
  StageRetryMode'
  #-}

instance Prelude.FromText StageRetryMode where
  parser = StageRetryMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText StageRetryMode where
  toText (StageRetryMode' x) = x

instance Prelude.Hashable StageRetryMode

instance Prelude.NFData StageRetryMode

instance Prelude.ToByteString StageRetryMode

instance Prelude.ToQuery StageRetryMode

instance Prelude.ToHeader StageRetryMode

instance Prelude.ToJSON StageRetryMode where
  toJSON = Prelude.toJSONText
