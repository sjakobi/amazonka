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
-- Module      : Network.AWS.Comprehend.Types.InputFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.InputFormat
  ( InputFormat
      ( ..,
        InputFormatONEDOCPERFILE,
        InputFormatONEDOCPERLINE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InputFormat = InputFormat'
  { fromInputFormat ::
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

pattern InputFormatONEDOCPERFILE :: InputFormat
pattern InputFormatONEDOCPERFILE = InputFormat' "ONE_DOC_PER_FILE"

pattern InputFormatONEDOCPERLINE :: InputFormat
pattern InputFormatONEDOCPERLINE = InputFormat' "ONE_DOC_PER_LINE"

{-# COMPLETE
  InputFormatONEDOCPERFILE,
  InputFormatONEDOCPERLINE,
  InputFormat'
  #-}

instance Prelude.FromText InputFormat where
  parser = InputFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputFormat where
  toText (InputFormat' x) = x

instance Prelude.Hashable InputFormat

instance Prelude.NFData InputFormat

instance Prelude.ToByteString InputFormat

instance Prelude.ToQuery InputFormat

instance Prelude.ToHeader InputFormat

instance Prelude.ToJSON InputFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputFormat where
  parseJSON = Prelude.parseJSONText "InputFormat"
