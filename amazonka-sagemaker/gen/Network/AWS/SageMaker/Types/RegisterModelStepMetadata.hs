{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.RegisterModelStepMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RegisterModelStepMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Metadata for a register model job step.
--
--
--
-- /See:/ 'registerModelStepMetadata' smart constructor.
newtype RegisterModelStepMetadata = RegisterModelStepMetadata'
  { _rmsmARN ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RegisterModelStepMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmsmARN' - The Amazon Resource Name (ARN) of the model package.
registerModelStepMetadata ::
  RegisterModelStepMetadata
registerModelStepMetadata =
  RegisterModelStepMetadata' {_rmsmARN = Nothing}

-- | The Amazon Resource Name (ARN) of the model package.
rmsmARN :: Lens' RegisterModelStepMetadata (Maybe Text)
rmsmARN = lens _rmsmARN (\s a -> s {_rmsmARN = a})

instance FromJSON RegisterModelStepMetadata where
  parseJSON =
    withObject
      "RegisterModelStepMetadata"
      (\x -> RegisterModelStepMetadata' <$> (x .:? "Arn"))

instance Hashable RegisterModelStepMetadata

instance NFData RegisterModelStepMetadata
