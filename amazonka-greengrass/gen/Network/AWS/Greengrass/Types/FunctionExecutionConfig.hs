{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.FunctionExecutionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.FunctionExecutionConfig where

import Network.AWS.Greengrass.Types.FunctionIsolationMode
import Network.AWS.Greengrass.Types.FunctionRunAsConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Configuration information that specifies how a Lambda function runs.
--
-- /See:/ 'functionExecutionConfig' smart constructor.
data FunctionExecutionConfig = FunctionExecutionConfig'
  { _fecIsolationMode ::
      !( Maybe
           FunctionIsolationMode
       ),
    _fecRunAs ::
      !( Maybe
           FunctionRunAsConfig
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'FunctionExecutionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fecIsolationMode' - Undocumented member.
--
-- * 'fecRunAs' - Undocumented member.
functionExecutionConfig ::
  FunctionExecutionConfig
functionExecutionConfig =
  FunctionExecutionConfig'
    { _fecIsolationMode =
        Nothing,
      _fecRunAs = Nothing
    }

-- | Undocumented member.
fecIsolationMode :: Lens' FunctionExecutionConfig (Maybe FunctionIsolationMode)
fecIsolationMode = lens _fecIsolationMode (\s a -> s {_fecIsolationMode = a})

-- | Undocumented member.
fecRunAs :: Lens' FunctionExecutionConfig (Maybe FunctionRunAsConfig)
fecRunAs = lens _fecRunAs (\s a -> s {_fecRunAs = a})

instance FromJSON FunctionExecutionConfig where
  parseJSON =
    withObject
      "FunctionExecutionConfig"
      ( \x ->
          FunctionExecutionConfig'
            <$> (x .:? "IsolationMode") <*> (x .:? "RunAs")
      )

instance Hashable FunctionExecutionConfig

instance NFData FunctionExecutionConfig

instance ToJSON FunctionExecutionConfig where
  toJSON FunctionExecutionConfig' {..} =
    object
      ( catMaybes
          [ ("IsolationMode" .=) <$> _fecIsolationMode,
            ("RunAs" .=) <$> _fecRunAs
          ]
      )
