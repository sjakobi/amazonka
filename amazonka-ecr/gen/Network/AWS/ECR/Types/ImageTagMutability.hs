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
-- Module      : Network.AWS.ECR.Types.ImageTagMutability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.ImageTagMutability
  ( ImageTagMutability
      ( ..,
        ImageTagMutabilityIMMUTABLE,
        ImageTagMutabilityMUTABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImageTagMutability = ImageTagMutability'
  { fromImageTagMutability ::
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

pattern ImageTagMutabilityIMMUTABLE :: ImageTagMutability
pattern ImageTagMutabilityIMMUTABLE = ImageTagMutability' "IMMUTABLE"

pattern ImageTagMutabilityMUTABLE :: ImageTagMutability
pattern ImageTagMutabilityMUTABLE = ImageTagMutability' "MUTABLE"

{-# COMPLETE
  ImageTagMutabilityIMMUTABLE,
  ImageTagMutabilityMUTABLE,
  ImageTagMutability'
  #-}

instance Prelude.FromText ImageTagMutability where
  parser = ImageTagMutability' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageTagMutability where
  toText (ImageTagMutability' x) = x

instance Prelude.Hashable ImageTagMutability

instance Prelude.NFData ImageTagMutability

instance Prelude.ToByteString ImageTagMutability

instance Prelude.ToQuery ImageTagMutability

instance Prelude.ToHeader ImageTagMutability

instance Prelude.ToJSON ImageTagMutability where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ImageTagMutability where
  parseJSON = Prelude.parseJSONText "ImageTagMutability"
