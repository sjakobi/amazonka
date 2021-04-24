{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Darknet,
        Keras,
        Mxnet,
        Onnx,
        Pytorch,
        Sklearn,
        Tensorflow,
        Tflite,
        Xgboost
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Framework = Framework' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Darknet :: Framework
pattern Darknet = Framework' "DARKNET"

pattern Keras :: Framework
pattern Keras = Framework' "KERAS"

pattern Mxnet :: Framework
pattern Mxnet = Framework' "MXNET"

pattern Onnx :: Framework
pattern Onnx = Framework' "ONNX"

pattern Pytorch :: Framework
pattern Pytorch = Framework' "PYTORCH"

pattern Sklearn :: Framework
pattern Sklearn = Framework' "SKLEARN"

pattern Tensorflow :: Framework
pattern Tensorflow = Framework' "TENSORFLOW"

pattern Tflite :: Framework
pattern Tflite = Framework' "TFLITE"

pattern Xgboost :: Framework
pattern Xgboost = Framework' "XGBOOST"

{-# COMPLETE
  Darknet,
  Keras,
  Mxnet,
  Onnx,
  Pytorch,
  Sklearn,
  Tensorflow,
  Tflite,
  Xgboost,
  Framework'
  #-}

instance FromText Framework where
  parser = (Framework' . mk) <$> takeText

instance ToText Framework where
  toText (Framework' ci) = original ci

instance Hashable Framework

instance NFData Framework

instance ToByteString Framework

instance ToQuery Framework

instance ToHeader Framework

instance ToJSON Framework where
  toJSON = toJSONText

instance FromJSON Framework where
  parseJSON = parseJSONText "Framework"
