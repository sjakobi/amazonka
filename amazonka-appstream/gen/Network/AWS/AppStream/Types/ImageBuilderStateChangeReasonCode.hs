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
-- Module      : Network.AWS.AppStream.Types.ImageBuilderStateChangeReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.ImageBuilderStateChangeReasonCode
  ( ImageBuilderStateChangeReasonCode
      ( ..,
        ImageBuilderStateChangeReasonCodeIMAGEUNAVAILABLE,
        ImageBuilderStateChangeReasonCodeINTERNALERROR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImageBuilderStateChangeReasonCode = ImageBuilderStateChangeReasonCode'
  { fromImageBuilderStateChangeReasonCode ::
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

pattern ImageBuilderStateChangeReasonCodeIMAGEUNAVAILABLE :: ImageBuilderStateChangeReasonCode
pattern ImageBuilderStateChangeReasonCodeIMAGEUNAVAILABLE = ImageBuilderStateChangeReasonCode' "IMAGE_UNAVAILABLE"

pattern ImageBuilderStateChangeReasonCodeINTERNALERROR :: ImageBuilderStateChangeReasonCode
pattern ImageBuilderStateChangeReasonCodeINTERNALERROR = ImageBuilderStateChangeReasonCode' "INTERNAL_ERROR"

{-# COMPLETE
  ImageBuilderStateChangeReasonCodeIMAGEUNAVAILABLE,
  ImageBuilderStateChangeReasonCodeINTERNALERROR,
  ImageBuilderStateChangeReasonCode'
  #-}

instance Prelude.FromText ImageBuilderStateChangeReasonCode where
  parser = ImageBuilderStateChangeReasonCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageBuilderStateChangeReasonCode where
  toText (ImageBuilderStateChangeReasonCode' x) = x

instance Prelude.Hashable ImageBuilderStateChangeReasonCode

instance Prelude.NFData ImageBuilderStateChangeReasonCode

instance Prelude.ToByteString ImageBuilderStateChangeReasonCode

instance Prelude.ToQuery ImageBuilderStateChangeReasonCode

instance Prelude.ToHeader ImageBuilderStateChangeReasonCode

instance Prelude.FromJSON ImageBuilderStateChangeReasonCode where
  parseJSON = Prelude.parseJSONText "ImageBuilderStateChangeReasonCode"
