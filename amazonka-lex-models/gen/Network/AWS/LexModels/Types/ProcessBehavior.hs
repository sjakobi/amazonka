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
-- Module      : Network.AWS.LexModels.Types.ProcessBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.ProcessBehavior
  ( ProcessBehavior
      ( ..,
        ProcessBehaviorBUILD,
        ProcessBehaviorSAVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProcessBehavior = ProcessBehavior'
  { fromProcessBehavior ::
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

pattern ProcessBehaviorBUILD :: ProcessBehavior
pattern ProcessBehaviorBUILD = ProcessBehavior' "BUILD"

pattern ProcessBehaviorSAVE :: ProcessBehavior
pattern ProcessBehaviorSAVE = ProcessBehavior' "SAVE"

{-# COMPLETE
  ProcessBehaviorBUILD,
  ProcessBehaviorSAVE,
  ProcessBehavior'
  #-}

instance Prelude.FromText ProcessBehavior where
  parser = ProcessBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProcessBehavior where
  toText (ProcessBehavior' x) = x

instance Prelude.Hashable ProcessBehavior

instance Prelude.NFData ProcessBehavior

instance Prelude.ToByteString ProcessBehavior

instance Prelude.ToQuery ProcessBehavior

instance Prelude.ToHeader ProcessBehavior

instance Prelude.ToJSON ProcessBehavior where
  toJSON = Prelude.toJSONText
