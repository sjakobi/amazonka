{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.StartLambdaFunctionFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.StartLambdaFunctionFailedCause
  ( StartLambdaFunctionFailedCause
      ( ..,
        AssumeRoleFailed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StartLambdaFunctionFailedCause
  = StartLambdaFunctionFailedCause'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AssumeRoleFailed :: StartLambdaFunctionFailedCause
pattern AssumeRoleFailed = StartLambdaFunctionFailedCause' "ASSUME_ROLE_FAILED"

{-# COMPLETE
  AssumeRoleFailed,
  StartLambdaFunctionFailedCause'
  #-}

instance FromText StartLambdaFunctionFailedCause where
  parser = (StartLambdaFunctionFailedCause' . mk) <$> takeText

instance ToText StartLambdaFunctionFailedCause where
  toText (StartLambdaFunctionFailedCause' ci) = original ci

instance Hashable StartLambdaFunctionFailedCause

instance NFData StartLambdaFunctionFailedCause

instance ToByteString StartLambdaFunctionFailedCause

instance ToQuery StartLambdaFunctionFailedCause

instance ToHeader StartLambdaFunctionFailedCause

instance FromJSON StartLambdaFunctionFailedCause where
  parseJSON = parseJSONText "StartLambdaFunctionFailedCause"
