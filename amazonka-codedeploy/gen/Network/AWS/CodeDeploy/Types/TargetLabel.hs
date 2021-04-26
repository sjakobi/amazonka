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
-- Module      : Network.AWS.CodeDeploy.Types.TargetLabel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.TargetLabel
  ( TargetLabel
      ( ..,
        TargetLabelBlue,
        TargetLabelGreen
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetLabel = TargetLabel'
  { fromTargetLabel ::
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

pattern TargetLabelBlue :: TargetLabel
pattern TargetLabelBlue = TargetLabel' "Blue"

pattern TargetLabelGreen :: TargetLabel
pattern TargetLabelGreen = TargetLabel' "Green"

{-# COMPLETE
  TargetLabelBlue,
  TargetLabelGreen,
  TargetLabel'
  #-}

instance Prelude.FromText TargetLabel where
  parser = TargetLabel' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetLabel where
  toText (TargetLabel' x) = x

instance Prelude.Hashable TargetLabel

instance Prelude.NFData TargetLabel

instance Prelude.ToByteString TargetLabel

instance Prelude.ToQuery TargetLabel

instance Prelude.ToHeader TargetLabel

instance Prelude.FromJSON TargetLabel where
  parseJSON = Prelude.parseJSONText "TargetLabel"
