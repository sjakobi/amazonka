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
-- Module      : Network.AWS.MediaLive.Types.H265AlternativeTransferFunction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265AlternativeTransferFunction
  ( H265AlternativeTransferFunction
      ( ..,
        H265AlternativeTransferFunctionINSERT,
        H265AlternativeTransferFunctionOMIT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H265 Alternative Transfer Function
newtype H265AlternativeTransferFunction = H265AlternativeTransferFunction'
  { fromH265AlternativeTransferFunction ::
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

pattern H265AlternativeTransferFunctionINSERT :: H265AlternativeTransferFunction
pattern H265AlternativeTransferFunctionINSERT = H265AlternativeTransferFunction' "INSERT"

pattern H265AlternativeTransferFunctionOMIT :: H265AlternativeTransferFunction
pattern H265AlternativeTransferFunctionOMIT = H265AlternativeTransferFunction' "OMIT"

{-# COMPLETE
  H265AlternativeTransferFunctionINSERT,
  H265AlternativeTransferFunctionOMIT,
  H265AlternativeTransferFunction'
  #-}

instance Prelude.FromText H265AlternativeTransferFunction where
  parser = H265AlternativeTransferFunction' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265AlternativeTransferFunction where
  toText (H265AlternativeTransferFunction' x) = x

instance Prelude.Hashable H265AlternativeTransferFunction

instance Prelude.NFData H265AlternativeTransferFunction

instance Prelude.ToByteString H265AlternativeTransferFunction

instance Prelude.ToQuery H265AlternativeTransferFunction

instance Prelude.ToHeader H265AlternativeTransferFunction

instance Prelude.ToJSON H265AlternativeTransferFunction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265AlternativeTransferFunction where
  parseJSON = Prelude.parseJSONText "H265AlternativeTransferFunction"
