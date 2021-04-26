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
-- Module      : Network.AWS.SageMaker.Types.Framework
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.Framework
  ( Framework
      ( ..,
        FrameworkDARKNET,
        FrameworkKERAS,
        FrameworkMXNET,
        FrameworkONNX,
        FrameworkPYTORCH,
        FrameworkSKLEARN,
        FrameworkTENSORFLOW,
        FrameworkTFLITE,
        FrameworkXGBOOST
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Framework = Framework'
  { fromFramework ::
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

pattern FrameworkDARKNET :: Framework
pattern FrameworkDARKNET = Framework' "DARKNET"

pattern FrameworkKERAS :: Framework
pattern FrameworkKERAS = Framework' "KERAS"

pattern FrameworkMXNET :: Framework
pattern FrameworkMXNET = Framework' "MXNET"

pattern FrameworkONNX :: Framework
pattern FrameworkONNX = Framework' "ONNX"

pattern FrameworkPYTORCH :: Framework
pattern FrameworkPYTORCH = Framework' "PYTORCH"

pattern FrameworkSKLEARN :: Framework
pattern FrameworkSKLEARN = Framework' "SKLEARN"

pattern FrameworkTENSORFLOW :: Framework
pattern FrameworkTENSORFLOW = Framework' "TENSORFLOW"

pattern FrameworkTFLITE :: Framework
pattern FrameworkTFLITE = Framework' "TFLITE"

pattern FrameworkXGBOOST :: Framework
pattern FrameworkXGBOOST = Framework' "XGBOOST"

{-# COMPLETE
  FrameworkDARKNET,
  FrameworkKERAS,
  FrameworkMXNET,
  FrameworkONNX,
  FrameworkPYTORCH,
  FrameworkSKLEARN,
  FrameworkTENSORFLOW,
  FrameworkTFLITE,
  FrameworkXGBOOST,
  Framework'
  #-}

instance Prelude.FromText Framework where
  parser = Framework' Prelude.<$> Prelude.takeText

instance Prelude.ToText Framework where
  toText (Framework' x) = x

instance Prelude.Hashable Framework

instance Prelude.NFData Framework

instance Prelude.ToByteString Framework

instance Prelude.ToQuery Framework

instance Prelude.ToHeader Framework

instance Prelude.ToJSON Framework where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Framework where
  parseJSON = Prelude.parseJSONText "Framework"
