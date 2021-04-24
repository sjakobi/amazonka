{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.CallAs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.CallAs
  ( CallAs
      ( ..,
        DelegatedAdmin,
        Self
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CallAs = CallAs' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DelegatedAdmin :: CallAs
pattern DelegatedAdmin = CallAs' "DELEGATED_ADMIN"

pattern Self :: CallAs
pattern Self = CallAs' "SELF"

{-# COMPLETE
  DelegatedAdmin,
  Self,
  CallAs'
  #-}

instance FromText CallAs where
  parser = (CallAs' . mk) <$> takeText

instance ToText CallAs where
  toText (CallAs' ci) = original ci

instance Hashable CallAs

instance NFData CallAs

instance ToByteString CallAs

instance ToQuery CallAs

instance ToHeader CallAs
