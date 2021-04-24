{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.PutFileEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.PutFileEntry where

import Network.AWS.CodeCommit.Types.FileModeTypeEnum
import Network.AWS.CodeCommit.Types.SourceFileSpecifier
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a file added or updated as part of a commit.
--
--
--
-- /See:/ 'putFileEntry' smart constructor.
data PutFileEntry = PutFileEntry'
  { _pfeFileContent ::
      !(Maybe Base64),
    _pfeSourceFile ::
      !(Maybe SourceFileSpecifier),
    _pfeFileMode :: !(Maybe FileModeTypeEnum),
    _pfeFilePath :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutFileEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfeFileContent' - The content of the file, if a source file is not specified.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'pfeSourceFile' - The name and full path of the file that contains the changes you want to make as part of the commit, if you are not providing the file content directly.
--
-- * 'pfeFileMode' - The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.
--
-- * 'pfeFilePath' - The full path to the file in the repository, including the name of the file.
putFileEntry ::
  -- | 'pfeFilePath'
  Text ->
  PutFileEntry
putFileEntry pFilePath_ =
  PutFileEntry'
    { _pfeFileContent = Nothing,
      _pfeSourceFile = Nothing,
      _pfeFileMode = Nothing,
      _pfeFilePath = pFilePath_
    }

-- | The content of the file, if a source file is not specified.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
pfeFileContent :: Lens' PutFileEntry (Maybe ByteString)
pfeFileContent = lens _pfeFileContent (\s a -> s {_pfeFileContent = a}) . mapping _Base64

-- | The name and full path of the file that contains the changes you want to make as part of the commit, if you are not providing the file content directly.
pfeSourceFile :: Lens' PutFileEntry (Maybe SourceFileSpecifier)
pfeSourceFile = lens _pfeSourceFile (\s a -> s {_pfeSourceFile = a})

-- | The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.
pfeFileMode :: Lens' PutFileEntry (Maybe FileModeTypeEnum)
pfeFileMode = lens _pfeFileMode (\s a -> s {_pfeFileMode = a})

-- | The full path to the file in the repository, including the name of the file.
pfeFilePath :: Lens' PutFileEntry Text
pfeFilePath = lens _pfeFilePath (\s a -> s {_pfeFilePath = a})

instance Hashable PutFileEntry

instance NFData PutFileEntry

instance ToJSON PutFileEntry where
  toJSON PutFileEntry' {..} =
    object
      ( catMaybes
          [ ("fileContent" .=) <$> _pfeFileContent,
            ("sourceFile" .=) <$> _pfeSourceFile,
            ("fileMode" .=) <$> _pfeFileMode,
            Just ("filePath" .= _pfeFilePath)
          ]
      )
