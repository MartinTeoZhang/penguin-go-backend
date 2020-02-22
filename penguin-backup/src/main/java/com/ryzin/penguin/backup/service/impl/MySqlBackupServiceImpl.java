package com.ryzin.penguin.backup.service.impl;

import org.springframework.stereotype.Service;

import com.ryzin.penguin.backup.service.MySqlBackupService;
import com.ryzin.penguin.backup.util.MySqlBackupRestoreUtils;

@Service
public class MySqlBackupServiceImpl implements MySqlBackupService {

	@Override
	public boolean backup(String host, String userName, String password, String backupFolderPath, String fileName,
			String database) throws Exception {
		return MySqlBackupRestoreUtils.backup(host, userName, password, backupFolderPath, fileName, database);
	}

	@Override
	public boolean restore(String restoreFilePath, String host, String userName, String password, String database)
			throws Exception {
		return MySqlBackupRestoreUtils.restore(restoreFilePath, host, userName, password, database);
	}

}
