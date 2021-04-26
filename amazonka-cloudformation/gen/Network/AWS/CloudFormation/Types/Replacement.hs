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
-- Module      : Network.AWS.CloudFormation.Types.Replacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.Replacement
  ( Replacement
      ( ..,
        ReplacementConditional,
        ReplacementFalse,
        ReplacementTrue
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Replacement = Replacement'
  { fromReplacement ::
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

pattern ReplacementConditional :: Replacement
pattern ReplacementConditional = Replacement' "Conditional"

pattern ReplacementFalse :: Replacement
pattern ReplacementFalse = Replacement' "False"

pattern ReplacementTrue :: Replacement
pattern ReplacementTrue = Replacement' "True"

{-# COMPLETE
  ReplacementConditional,
  ReplacementFalse,
  ReplacementTrue,
  Replacement'
  #-}

instance Prelude.FromText Replacement where
  parser = Replacement' Prelude.<$> Prelude.takeText

instance Prelude.ToText Replacement where
  toText (Replacement' x) = x

instance Prelude.Hashable Replacement

instance Prelude.NFData Replacement

instance Prelude.ToByteString Replacement

instance Prelude.ToQuery Replacement

instance Prelude.ToHeader Replacement

instance Prelude.FromXML Replacement where
  parseXML = Prelude.parseXMLText "Replacement"
