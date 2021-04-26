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
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2Syntax
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2Syntax
  ( Mpeg2Syntax
      ( ..,
        Mpeg2SyntaxD10,
        Mpeg2SyntaxDEFAULT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify whether this output\'s video uses the D10 syntax. Keep the
-- default value to not use the syntax. Related settings: When you choose
-- D10 (D_10) for your MXF profile (profile), you must also set this value
-- to to D10 (D_10).
newtype Mpeg2Syntax = Mpeg2Syntax'
  { fromMpeg2Syntax ::
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

pattern Mpeg2SyntaxD10 :: Mpeg2Syntax
pattern Mpeg2SyntaxD10 = Mpeg2Syntax' "D_10"

pattern Mpeg2SyntaxDEFAULT :: Mpeg2Syntax
pattern Mpeg2SyntaxDEFAULT = Mpeg2Syntax' "DEFAULT"

{-# COMPLETE
  Mpeg2SyntaxD10,
  Mpeg2SyntaxDEFAULT,
  Mpeg2Syntax'
  #-}

instance Prelude.FromText Mpeg2Syntax where
  parser = Mpeg2Syntax' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2Syntax where
  toText (Mpeg2Syntax' x) = x

instance Prelude.Hashable Mpeg2Syntax

instance Prelude.NFData Mpeg2Syntax

instance Prelude.ToByteString Mpeg2Syntax

instance Prelude.ToQuery Mpeg2Syntax

instance Prelude.ToHeader Mpeg2Syntax

instance Prelude.ToJSON Mpeg2Syntax where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2Syntax where
  parseJSON = Prelude.parseJSONText "Mpeg2Syntax"
