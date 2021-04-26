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
-- Module      : Network.AWS.ECR.Types.LayerAvailability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.LayerAvailability
  ( LayerAvailability
      ( ..,
        LayerAvailabilityAVAILABLE,
        LayerAvailabilityUNAVAILABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LayerAvailability = LayerAvailability'
  { fromLayerAvailability ::
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

pattern LayerAvailabilityAVAILABLE :: LayerAvailability
pattern LayerAvailabilityAVAILABLE = LayerAvailability' "AVAILABLE"

pattern LayerAvailabilityUNAVAILABLE :: LayerAvailability
pattern LayerAvailabilityUNAVAILABLE = LayerAvailability' "UNAVAILABLE"

{-# COMPLETE
  LayerAvailabilityAVAILABLE,
  LayerAvailabilityUNAVAILABLE,
  LayerAvailability'
  #-}

instance Prelude.FromText LayerAvailability where
  parser = LayerAvailability' Prelude.<$> Prelude.takeText

instance Prelude.ToText LayerAvailability where
  toText (LayerAvailability' x) = x

instance Prelude.Hashable LayerAvailability

instance Prelude.NFData LayerAvailability

instance Prelude.ToByteString LayerAvailability

instance Prelude.ToQuery LayerAvailability

instance Prelude.ToHeader LayerAvailability

instance Prelude.FromJSON LayerAvailability where
  parseJSON = Prelude.parseJSONText "LayerAvailability"
