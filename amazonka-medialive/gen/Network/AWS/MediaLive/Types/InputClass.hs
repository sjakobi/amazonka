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
-- Module      : Network.AWS.MediaLive.Types.InputClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputClass
  ( InputClass
      ( ..,
        InputClassSINGLEPIPELINE,
        InputClassSTANDARD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | A standard input has two sources and a single pipeline input only has
-- one.
newtype InputClass = InputClass'
  { fromInputClass ::
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

pattern InputClassSINGLEPIPELINE :: InputClass
pattern InputClassSINGLEPIPELINE = InputClass' "SINGLE_PIPELINE"

pattern InputClassSTANDARD :: InputClass
pattern InputClassSTANDARD = InputClass' "STANDARD"

{-# COMPLETE
  InputClassSINGLEPIPELINE,
  InputClassSTANDARD,
  InputClass'
  #-}

instance Prelude.FromText InputClass where
  parser = InputClass' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputClass where
  toText (InputClass' x) = x

instance Prelude.Hashable InputClass

instance Prelude.NFData InputClass

instance Prelude.ToByteString InputClass

instance Prelude.ToQuery InputClass

instance Prelude.ToHeader InputClass

instance Prelude.FromJSON InputClass where
  parseJSON = Prelude.parseJSONText "InputClass"
