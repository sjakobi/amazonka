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
-- Module      : Network.AWS.Config.Types.ResourceCountGroupKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ResourceCountGroupKey
  ( ResourceCountGroupKey
      ( ..,
        ResourceCountGroupKeyACCOUNTID,
        ResourceCountGroupKeyAWSREGION,
        ResourceCountGroupKeyRESOURCETYPE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceCountGroupKey = ResourceCountGroupKey'
  { fromResourceCountGroupKey ::
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

pattern ResourceCountGroupKeyACCOUNTID :: ResourceCountGroupKey
pattern ResourceCountGroupKeyACCOUNTID = ResourceCountGroupKey' "ACCOUNT_ID"

pattern ResourceCountGroupKeyAWSREGION :: ResourceCountGroupKey
pattern ResourceCountGroupKeyAWSREGION = ResourceCountGroupKey' "AWS_REGION"

pattern ResourceCountGroupKeyRESOURCETYPE :: ResourceCountGroupKey
pattern ResourceCountGroupKeyRESOURCETYPE = ResourceCountGroupKey' "RESOURCE_TYPE"

{-# COMPLETE
  ResourceCountGroupKeyACCOUNTID,
  ResourceCountGroupKeyAWSREGION,
  ResourceCountGroupKeyRESOURCETYPE,
  ResourceCountGroupKey'
  #-}

instance Prelude.FromText ResourceCountGroupKey where
  parser = ResourceCountGroupKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceCountGroupKey where
  toText (ResourceCountGroupKey' x) = x

instance Prelude.Hashable ResourceCountGroupKey

instance Prelude.NFData ResourceCountGroupKey

instance Prelude.ToByteString ResourceCountGroupKey

instance Prelude.ToQuery ResourceCountGroupKey

instance Prelude.ToHeader ResourceCountGroupKey

instance Prelude.ToJSON ResourceCountGroupKey where
  toJSON = Prelude.toJSONText
