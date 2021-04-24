{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.TestGridSessionArtifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.TestGridSessionArtifact where

import Network.AWS.DeviceFarm.Types.TestGridSessionArtifactType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Artifacts are video and other files that are produced in the process of running a browser in an automated context.
--
--
--
-- /See:/ 'testGridSessionArtifact' smart constructor.
data TestGridSessionArtifact = TestGridSessionArtifact'
  { _tgsaFilename ::
      !(Maybe Text),
    _tgsaUrl ::
      !(Maybe Text),
    _tgsaType ::
      !( Maybe
           TestGridSessionArtifactType
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

-- | Creates a value of 'TestGridSessionArtifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgsaFilename' - The file name of the artifact.
--
-- * 'tgsaUrl' - A semi-stable URL to the content of the object.
--
-- * 'tgsaType' - The kind of artifact.
testGridSessionArtifact ::
  TestGridSessionArtifact
testGridSessionArtifact =
  TestGridSessionArtifact'
    { _tgsaFilename = Nothing,
      _tgsaUrl = Nothing,
      _tgsaType = Nothing
    }

-- | The file name of the artifact.
tgsaFilename :: Lens' TestGridSessionArtifact (Maybe Text)
tgsaFilename = lens _tgsaFilename (\s a -> s {_tgsaFilename = a})

-- | A semi-stable URL to the content of the object.
tgsaUrl :: Lens' TestGridSessionArtifact (Maybe Text)
tgsaUrl = lens _tgsaUrl (\s a -> s {_tgsaUrl = a})

-- | The kind of artifact.
tgsaType :: Lens' TestGridSessionArtifact (Maybe TestGridSessionArtifactType)
tgsaType = lens _tgsaType (\s a -> s {_tgsaType = a})

instance FromJSON TestGridSessionArtifact where
  parseJSON =
    withObject
      "TestGridSessionArtifact"
      ( \x ->
          TestGridSessionArtifact'
            <$> (x .:? "filename")
            <*> (x .:? "url")
            <*> (x .:? "type")
      )

instance Hashable TestGridSessionArtifact

instance NFData TestGridSessionArtifact
