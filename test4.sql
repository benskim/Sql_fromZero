/*
	PK, NN, NN, CHECK
CREATE TABLE �Ǹ���ǥ(
	��ǥ��ȣ VARCHAR2(12),
	�Ǹ����� DATE,
	���� VARCHAR2(34),
	�Ѿ� NUMBER	
);
CREATE TABLE ��ǰ(
	��ǰ��ȣ VARCHAR2(12),
	��ǰ�� VARCHAR2(50),
	��ǰ�ܰ� NUMBER	
);
CREATE TABLE ��ǥ��(
	��ǥ��ȣ VARCHAR2(12),
	��ǰ��ȣ VARCHAR2(12),
	���� NUMBER,
	�ܰ� NUMBER,
	�ݾ� NUMBER
);
*/
/*
ALTER TABLE �Ǹ���ǥ ADD CONSTRAINT �Ǹ���ǥ_��ǥ��ȣ_pk PRIMARY KEY(��ǥ��ȣ);
ALTER TABLE �Ǹ���ǥ ADD CONSTRAINT �Ǹ���ǥ_�Ѿ�_ch CHECK(�Ѿ�>0);
ALTER TABLE �Ǹ���ǥ MODIFY �Ǹ����� CONSTRAINT �Ǹ���ǥ_�Ǹ�����_nn NOT NULL;
ALTER TABLE �Ǹ���ǥ MODIFY ���� CONSTRAINT �Ǹ���ǥ_����_nn NOT NULL;
*/
/*
ALTER TABLE ��ǰ ADD CONSTRAINT ��ǰ_��ǰ��ȣ_pk PRIMARY KEY(��ǰ��ȣ);
ALTER TABLE ��ǰ ADD CONSTRAINT ��ǰ_��ǰ�ܰ�_ck CHECK(��ǰ�ܰ�>0);
ALTER TABLE ��ǰ MODIFY ��ǰ�� CONSTRAINT ��ǰ_��ǰ��_nn NOT NULL;
*/
/*
ALTER TABLE ��ǥ�� ADD CONSTRAINT ��ǥ��_��ǥ��ȣ_pk PRIMARY KEY(��ǥ��ȣ);
ALTER TABLE ��ǥ�� ADD CONSTRAINT ��ǥ��_�ݾ�_ch CHECK(�ݾ�);
ALTER TABLE ��ǥ�� MODIFY ���� CONSTRAINT ��ǥ��_����_nn NOT NULL;
ALTER TABLE ��ǥ�� MODIFY �ܰ� CONSTRAINT ��ǥ��_�ܰ�_nn NOT NULL;
ALTER TABLE ��ǥ�� ADD CONSTRAINT ��ǥ��_��ǥ��ȣ_fk FOREIGN KEY(��ǥ��ȣ)
REFERENCES �Ǹ���ǥ(��ǥ��ȣ);
ALTER TABLE ��ǥ�� ADD CONSTRAINT ��ǥ��_��ǰ��ȣ_fk FOREIGN KEY(��ǥ��ȣ)
REFERENCES ��ǰ(��ǰ��ȣ);
*/
/*
--���� ���� ����
ALTER TABLE ��ǥ�� DROP CONSTRAINT ��ǥ��_��ǥ��ȣ_fk;
ALTER TABLE ��ǥ�� DROP CONSTRAINT ��ǥ��_��ǰ��ȣ_fk;
*/
ALTER TABLE ��ǥ�� ADD CONSTRAINT ��ǥ��_��ǥ��ȣ_fk FOREIGN KEY(��ǥ��ȣ)
REFERENCES �Ǹ���ǥ(��ǥ��ȣ);
ALTER TABLE ��ǥ�� ADD CONSTRAINT ��ǥ��_��ǰ��ȣ_fk FOREIGN KEY(��ǥ��ȣ)
REFERENCES ��ǰ(��ǰ��ȣ);


