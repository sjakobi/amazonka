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
-- Module      : Network.AWS.CodeDeploy.Types.FileExistsBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.FileExistsBehavior
  ( FileExistsBehavior
      ( ..,
        FileExistsBehaviorDISALLOW,
        FileExistsBehaviorOVERWRITE,
        FileExistsBehaviorRETAIN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FileExistsBehavior = FileExistsBehavior'
  { fromFileExistsBehavior ::
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

pattern FileExistsBehaviorDISALLOW :: FileExistsBehavior
pattern FileExistsBehaviorDISALLOW = FileExistsBehavior' "DISALLOW"

pattern FileExistsBehaviorOVERWRITE :: FileExistsBehavior
pattern FileExistsBehaviorOVERWRITE = FileExistsBehavior' "OVERWRITE"

pattern FileExistsBehaviorRETAIN :: FileExistsBehavior
pattern FileExistsBehaviorRETAIN = FileExistsBehavior' "RETAIN"

{-# COMPLETE
  FileExistsBehaviorDISALLOW,
  FileExistsBehaviorOVERWRITE,
  FileExistsBehaviorRETAIN,
  FileExistsBehavior'
  #-}

instance Prelude.FromText FileExistsBehavior where
  parser = FileExistsBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText FileExistsBehavior where
  toText (FileExistsBehavior' x) = x

instance Prelude.Hashable FileExistsBehavior

instance Prelude.NFData FileExistsBehavior

instance Prelude.ToByteString FileExistsBehavior

instance Prelude.ToQuery FileExistsBehavior

instance Prelude.ToHeader FileExistsBehavior

instance Prelude.ToJSON FileExistsBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FileExistsBehavior where
  parseJSON = Prelude.parseJSONText "FileExistsBehavior"
