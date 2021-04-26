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
-- Module      : Network.AWS.ECR.Types.ImageActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.ImageActionType
  ( ImageActionType
      ( ..,
        ImageActionTypeEXPIRE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImageActionType = ImageActionType'
  { fromImageActionType ::
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

pattern ImageActionTypeEXPIRE :: ImageActionType
pattern ImageActionTypeEXPIRE = ImageActionType' "EXPIRE"

{-# COMPLETE
  ImageActionTypeEXPIRE,
  ImageActionType'
  #-}

instance Prelude.FromText ImageActionType where
  parser = ImageActionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageActionType where
  toText (ImageActionType' x) = x

instance Prelude.Hashable ImageActionType

instance Prelude.NFData ImageActionType

instance Prelude.ToByteString ImageActionType

instance Prelude.ToQuery ImageActionType

instance Prelude.ToHeader ImageActionType

instance Prelude.FromJSON ImageActionType where
  parseJSON = Prelude.parseJSONText "ImageActionType"
