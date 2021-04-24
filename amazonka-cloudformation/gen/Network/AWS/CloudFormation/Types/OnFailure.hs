{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.OnFailure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.OnFailure
  ( OnFailure
      ( ..,
        OFDelete,
        OFDoNothing,
        OFRollback
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OnFailure = OnFailure' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OFDelete :: OnFailure
pattern OFDelete = OnFailure' "DELETE"

pattern OFDoNothing :: OnFailure
pattern OFDoNothing = OnFailure' "DO_NOTHING"

pattern OFRollback :: OnFailure
pattern OFRollback = OnFailure' "ROLLBACK"

{-# COMPLETE
  OFDelete,
  OFDoNothing,
  OFRollback,
  OnFailure'
  #-}

instance FromText OnFailure where
  parser = (OnFailure' . mk) <$> takeText

instance ToText OnFailure where
  toText (OnFailure' ci) = original ci

instance Hashable OnFailure

instance NFData OnFailure

instance ToByteString OnFailure

instance ToQuery OnFailure

instance ToHeader OnFailure
