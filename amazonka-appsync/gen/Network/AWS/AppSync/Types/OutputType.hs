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
-- Module      : Network.AWS.AppSync.Types.OutputType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.OutputType
  ( OutputType
      ( ..,
        OutputTypeJSON,
        OutputTypeSDL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OutputType = OutputType'
  { fromOutputType ::
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

pattern OutputTypeJSON :: OutputType
pattern OutputTypeJSON = OutputType' "JSON"

pattern OutputTypeSDL :: OutputType
pattern OutputTypeSDL = OutputType' "SDL"

{-# COMPLETE
  OutputTypeJSON,
  OutputTypeSDL,
  OutputType'
  #-}

instance Prelude.FromText OutputType where
  parser = OutputType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OutputType where
  toText (OutputType' x) = x

instance Prelude.Hashable OutputType

instance Prelude.NFData OutputType

instance Prelude.ToByteString OutputType

instance Prelude.ToQuery OutputType

instance Prelude.ToHeader OutputType

instance Prelude.ToJSON OutputType where
  toJSON = Prelude.toJSONText
