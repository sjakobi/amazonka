{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AppType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AppType
  ( AppType
      ( ..,
        JupyterServer,
        KernelGateway,
        TensorBoard
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppType = AppType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern JupyterServer :: AppType
pattern JupyterServer = AppType' "JupyterServer"

pattern KernelGateway :: AppType
pattern KernelGateway = AppType' "KernelGateway"

pattern TensorBoard :: AppType
pattern TensorBoard = AppType' "TensorBoard"

{-# COMPLETE
  JupyterServer,
  KernelGateway,
  TensorBoard,
  AppType'
  #-}

instance FromText AppType where
  parser = (AppType' . mk) <$> takeText

instance ToText AppType where
  toText (AppType' ci) = original ci

instance Hashable AppType

instance NFData AppType

instance ToByteString AppType

instance ToQuery AppType

instance ToHeader AppType

instance ToJSON AppType where
  toJSON = toJSONText

instance FromJSON AppType where
  parseJSON = parseJSONText "AppType"
