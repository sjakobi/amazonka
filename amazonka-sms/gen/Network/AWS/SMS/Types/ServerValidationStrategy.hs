{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ServerValidationStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ServerValidationStrategy
  ( ServerValidationStrategy
      ( ..,
        Userdata
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ServerValidationStrategy
  = ServerValidationStrategy'
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

pattern Userdata :: ServerValidationStrategy
pattern Userdata = ServerValidationStrategy' "USERDATA"

{-# COMPLETE
  Userdata,
  ServerValidationStrategy'
  #-}

instance FromText ServerValidationStrategy where
  parser = (ServerValidationStrategy' . mk) <$> takeText

instance ToText ServerValidationStrategy where
  toText (ServerValidationStrategy' ci) = original ci

instance Hashable ServerValidationStrategy

instance NFData ServerValidationStrategy

instance ToByteString ServerValidationStrategy

instance ToQuery ServerValidationStrategy

instance ToHeader ServerValidationStrategy

instance ToJSON ServerValidationStrategy where
  toJSON = toJSONText

instance FromJSON ServerValidationStrategy where
  parseJSON = parseJSONText "ServerValidationStrategy"
