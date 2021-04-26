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
-- Module      : Network.AWS.AppStream.Types.ImageStateChangeReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.ImageStateChangeReasonCode
  ( ImageStateChangeReasonCode
      ( ..,
        ImageStateChangeReasonCodeIMAGEBUILDERNOTAVAILABLE,
        ImageStateChangeReasonCodeIMAGECOPYFAILURE,
        ImageStateChangeReasonCodeINTERNALERROR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImageStateChangeReasonCode = ImageStateChangeReasonCode'
  { fromImageStateChangeReasonCode ::
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

pattern ImageStateChangeReasonCodeIMAGEBUILDERNOTAVAILABLE :: ImageStateChangeReasonCode
pattern ImageStateChangeReasonCodeIMAGEBUILDERNOTAVAILABLE = ImageStateChangeReasonCode' "IMAGE_BUILDER_NOT_AVAILABLE"

pattern ImageStateChangeReasonCodeIMAGECOPYFAILURE :: ImageStateChangeReasonCode
pattern ImageStateChangeReasonCodeIMAGECOPYFAILURE = ImageStateChangeReasonCode' "IMAGE_COPY_FAILURE"

pattern ImageStateChangeReasonCodeINTERNALERROR :: ImageStateChangeReasonCode
pattern ImageStateChangeReasonCodeINTERNALERROR = ImageStateChangeReasonCode' "INTERNAL_ERROR"

{-# COMPLETE
  ImageStateChangeReasonCodeIMAGEBUILDERNOTAVAILABLE,
  ImageStateChangeReasonCodeIMAGECOPYFAILURE,
  ImageStateChangeReasonCodeINTERNALERROR,
  ImageStateChangeReasonCode'
  #-}

instance Prelude.FromText ImageStateChangeReasonCode where
  parser = ImageStateChangeReasonCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageStateChangeReasonCode where
  toText (ImageStateChangeReasonCode' x) = x

instance Prelude.Hashable ImageStateChangeReasonCode

instance Prelude.NFData ImageStateChangeReasonCode

instance Prelude.ToByteString ImageStateChangeReasonCode

instance Prelude.ToQuery ImageStateChangeReasonCode

instance Prelude.ToHeader ImageStateChangeReasonCode

instance Prelude.FromJSON ImageStateChangeReasonCode where
  parseJSON = Prelude.parseJSONText "ImageStateChangeReasonCode"
